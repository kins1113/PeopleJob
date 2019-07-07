package com.ez.peoplejob.jobopening.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.common.FileUploadUtility;
import com.ez.peoplejob.common.PaginationInfo;
import com.ez.peoplejob.common.SearchVO;
import com.ez.peoplejob.common.WebUtility;
import com.ez.peoplejob.jobopening.model.JobopeningService;
import com.ez.peoplejob.jobopening.model.JobopeningVO;

@RequestMapping("/company")
@Controller
public class JobopeningController {
	private Logger logger=LoggerFactory.getLogger(JobopeningController.class);
	@Autowired JobopeningService jobopeningService;
	@Autowired private FileUploadUtility fileUploadUtil;
	@RequestMapping(value="/jobopening_register.do",method = RequestMethod.GET)
	public String jobopening_register_get() {
		logger.info("채용공고폼");
		return "company/jobopening_register";
	}
	
	@RequestMapping(value="/jobopening_register.do",method = RequestMethod.POST)
	public String jobopening_register_post(@ModelAttribute JobopeningVO vo,HttpServletRequest request,Model model) {
		/*
		 * String wel=""; for(int i=0;i<welfare1.size();i++) { if(i!=0) { wel+=","; }
		 * wel+=welfare1.get(i); } vo.setWelfare(wel);
		 */
		/*
		 * String walfare=vo.getWelfare(); String[] arr=walfare.split(",");
		 */
		logger.info("채용공고 등록 파라미터 vo={}",vo);
		
		List<Map<String,Object>>list=fileUploadUtil.fileUpload(request);
		 
		String imageURL="";
		for(Map<String,Object>map:list) {
			imageURL=(String)map.get("fileName");
		}
		vo.setCompanyimage(imageURL);
		
		int cnt=jobopeningService.insertJobOpen(vo);
		logger.info("공고등록결과 cnt={}",cnt);
		String msg="",url="/company/jobopening_register.do";
		if(cnt>0) {
			msg="공고등록성공";
			url="/company/jobopening_list.do";
		}else {
			msg="공고등록 실패";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	@RequestMapping("/jobopening_list.do")
	public String jobopening_list(@ModelAttribute SearchVO searchVo,Model model) {
		logger.info("채용공고 리스트");
		//1]PaginationInfo 객체 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(WebUtility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//2]SearchVo에 페이징 관련 변수 세팅
		searchVo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("셋팅 후 serchVo={}",searchVo);
		
		List<JobopeningVO> list=jobopeningService.selectJobOpen(searchVo);
		logger.info("공고 list.size={}",list.size());
		int totalRecord=0;
		totalRecord=jobopeningService.selectTotalCount(searchVo);
		logger.info("전체 레코드 개수 조회 결과, totalRecord={}",totalRecord);
		
		//5]PaginationInfo에 totalRecord값셋팅
		pagingInfo.setTotalRecord(totalRecord);
		//3
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list",list);
		return "company/jobopening_list";
	}
	@RequestMapping("/jobopening_view.do")
	public String jobopening_view(@RequestParam (defaultValue = "0")int jobopening,Model model) {
		logger.info("채용공고뷰보기 파라미터 jobopening={}",jobopening);
		JobopeningVO vo=jobopeningService.selectJobOpenByNo(jobopening);
		logger.info("자세히보기 변수 vo=",vo);
		model.addAttribute("vo", vo);
		return "company/jobopening_view";
	}
	@RequestMapping("/jobopening_where.do")
	public String jobopening_where() {
		logger.info("조건지정");
		return "company/jobopening_where";
	}
	@RequestMapping(value="/jobopening_edit.do",method = RequestMethod.GET)
	public String jobopening_edit(@RequestParam (defaultValue = "0")int jobopening,HttpServletRequest request,Model model) {
		logger.info("수정");
		JobopeningVO vo=jobopeningService.selectJobOpenByNo(jobopening);
		
		
		String fileInfo
		=fileUploadUtil.getFileInfo(vo.getCompanyimage(), 1, request);
		model.addAttribute("vo", vo);
		model.addAttribute("fileInfo", fileInfo);
		return "company/jobopening_edit";
	}
	@RequestMapping(value="/jobopening_edit.do",method =RequestMethod.POST)
	public String jobopening_edit_post(@ModelAttribute JobopeningVO vo,@RequestParam String oldFileName,HttpServletRequest request,Model model) {
		logger.info("수정처리");
		
		List<Map<String,Object>>list=fileUploadUtil.fileUpload(request);
		 
		String imageURL="";
		for(Map<String,Object>map:list) {
			imageURL=(String)map.get("fileName");
		}
		vo.setCompanyimage(imageURL);
		
		int cnt=jobopeningService.updateJobOpen(vo);
		logger.info("수정처리결과 cnt={}",cnt);
		String msg="",url="/company/jobopening_edit.do?jobopening="+vo.getJobopening();
		if(cnt>0) {
			msg="수정성공";
			url="/company/jobopening_view.do?jobopening="+vo.getJobopening();
			//새로 업로드한 경우, 기존 파일이 있으면 기존파일은 삭제
			if(imageURL!=null && !imageURL.isEmpty()) {
				if(oldFileName!=null && !oldFileName.isEmpty()) {
					String path=fileUploadUtil.getUploadPath(request);
					File oldFile=new File(path, oldFileName);
					if(oldFile.exists()) {
						boolean bool=oldFile.delete();
						logger.info("기존 파일 삭제 여부={}", bool);
					}
				}
			}
		}else {
			msg="수정실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	@RequestMapping(value="/jobopening_upHit.do",method = RequestMethod.GET)
	public String jobopening_upHit(@RequestParam (defaultValue = "0")int jobopening,HttpServletRequest request,Model model) {
		logger.info("수정처리");
		int cnt=jobopeningService.updateHits(jobopening);
		logger.info("조회수 증가 결과 cnt={}",cnt);
		String url="";
		if(cnt>0) {
			url="/company/jobopening_view.do?jobopening="+jobopening;
		}else {
			url="/company/jobopening_list.do";
		}
		model.addAttribute("url", url);
		return "redirect:"+url;
	}
	@RequestMapping(value="/jobopening_del.do",method=RequestMethod.GET)
	public String jobopening_del(@RequestParam (defaultValue = "0")int jobopening,HttpServletRequest request,Model model) {
		logger.info("삭제처리");
		JobopeningVO vo=jobopeningService.selectJobOpenByNo(jobopening);
		int cnt=jobopeningService.deleteJobOpen(jobopening);
		logger.info("vo={}",vo);
		String msg="",url="";
		if(cnt>0) {
			msg="삭제완료";
			url="/company/jobopening_list.do";
			if(vo.getCompanyimage()!=null 
					&& !vo.getCompanyimage().isEmpty()) {
					String path=fileUploadUtil.getUploadPath(request);
					File file=new File(path, vo.getCompanyimage());
					if(file.exists()) {
						boolean bool=file.delete();
						logger.info("파일삭제 여부={}", bool);
					}
				}	
		}else {
			msg="삭제실패";
			url="/company/jobopening_view.do?jobopening="+jobopening;
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	@RequestMapping(value="/jobopening_agreeEdit.do",method=RequestMethod.GET)
	public String jobopening_agreeEdit(@RequestParam (defaultValue = "0")int jobopening,Model model) {
		logger.info("활성화 변경");
		int cnt=jobopeningService.updateAdminagree(jobopening);
		String msg="",url="/company/jobopening_view.do?jobopening="+jobopening;
		if(cnt>0) {
			msg="활성화 변경 완료";
			url="/company/jobopening_list.do";
		}else {
			msg="활성화 변경 실패";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
}
