package com.ez.peoplejob.resume.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.common.PaginationInfo;
import com.ez.peoplejob.common.SearchVO;
import com.ez.peoplejob.common.WebUtility;
import com.ez.peoplejob.resume.model.ResumeService;
import com.ez.peoplejob.resume.model.ResumeVO;

@Controller
@RequestMapping("/resume")
public class ResumeController {
	
	@Autowired
	private ResumeService resumeService;
	
	private Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String register_get(HttpSession session, Model model) {
		String memberid=(String) session.getAttribute("memberid");
		logger.info("이력서등록 화면 보여주기");
		ResumeVO vo=resumeService.selectByMemverid(memberid);
		logger.info("회원정보 조회vo={}",vo);
		model.addAttribute("vo", vo);
		return "resume/register";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute ResumeVO vo,Model model) {
		logger.info("이력서 등록화면 보여주기 매개변수 vo{}=",vo);
		int cnt=resumeService.insertResume(vo);
		
		logger.info("이력서 등록 결과 cnt ={}",cnt);
		String msg="",url="/resume/register.do";
		if(cnt>0) {
			msg="이력서 등록 성공";
			url="/resume/list.do";
		}else {
			msg="이력서 등록 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	
	@RequestMapping("/list.do")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {

			//1
			logger.info("이력서목록 파라미터 searchVo={}", searchVo);
			
			//2
			//[1] PaginationInfo 객체 생성
			PaginationInfo pagingInfo=new PaginationInfo();
			pagingInfo.setBlockSize(WebUtility.BLOCK_SIZE);
			pagingInfo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
			pagingInfo.setCurrentPage(searchVo.getCurrentPage());
			
			//[2] SearchVo에 페이징 관련 변수 셋팅
			searchVo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
			searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
			logger.info("셋팅 후 searchVo={}", searchVo);
			
			//[3] 조회처리
			List<ResumeVO> list=resumeService.selectAll(searchVo);
			logger.info("이력서목록 결과, list.size={}",list.size());
				
			//3
			model.addAttribute("list", list);
			model.addAttribute("pagingInfo", pagingInfo);
			
			return "resume/list";
		}
	
	
	@RequestMapping("/detail.do")
	public String detail(@RequestParam(defaultValue = "0") int resumeCode, 
			ModelMap model) {
		logger.info("글 상세보기, 파라미터 resumeCode={}", resumeCode);
		
		if(resumeCode==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/resume/list.do");
			
			return "common/message";
		}
		
		ResumeVO resumeVo=resumeService.selectResumeByNo(resumeCode);
		logger.info("상세보기 결과 vo={}", resumeVo);
		
		model.addAttribute("vo", resumeVo);
		
		return "resume/detail";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.GET)
	public String edit_get(@RequestParam(defaultValue = "0") int resumeCode, 
			ModelMap model) {
		logger.info("수정화면, 파라미터 resumeCode={}", resumeCode);
		
		if(resumeCode==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/resume/list.do");
			return "common/message";
		}
		
		ResumeVO resumeVo=resumeService.selectResumeByNo(resumeCode);
		logger.info("수정화면 조회 결과, vo={}", resumeVo);
		
		model.addAttribute("vo", resumeVo);
		return "resume/edit";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.POST)
	public String edit_post(@ModelAttribute ResumeVO resumeVo, Model model) {
		logger.info("이력서 수정 처리, 파라미터 resumeVo={}", resumeVo);
		
		String msg="", url="/resume/edit.do";
			int cnt=resumeService.updateResume(resumeVo);
			if(cnt>0) {
				msg="이력서 수정되었습니다.";
				url="/resume/detail.do?resumeCode="+resumeVo.getResumeCode();
			}else {
				msg="이력서 수정 실패.";
			}
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "common/message";
		}
	
	@RequestMapping(value="/delete.do",method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue = "0") int resumeCode, Model model) {
		logger.info("삭제 화면 파라미터 resumeCode={}" , resumeCode);
		
		if(resumeCode==0) {
			model.addAttribute("msg","잘못된 url입니다.");
			model.addAttribute("url","/resume/list.do");
			return "common/message";
			
		}
		
		return "resume/delete";
	}
	@RequestMapping(value="/delete.do",method = RequestMethod.POST)
	public String delete_post(@ModelAttribute ResumeVO resumeVo, Model model) {
		logger.info("이력서 삭제 처리, 파라미터 resumeVo={}",resumeVo);
		
		String msg="",url="/resume/delete.do?resumeCode="+resumeVo.getResumeCode();
			int cnt=resumeService.deleteResumeByNo(resumeVo.getResumeCode());
			logger.info("이력서 삭제 처리 결과, cnt={}",cnt);
			
			if(cnt>0) {
				msg="이력서 삭제되었습니다.";
				url="/resume/list.do";
			}else {
				msg="이력서 삭제 실패!";
			}
		
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	}	

