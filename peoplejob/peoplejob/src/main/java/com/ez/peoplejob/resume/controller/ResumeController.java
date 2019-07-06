package com.ez.peoplejob.resume.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ez.peoplejob.board.model.BoardVO;
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
	public String register(HttpSession session, Model model) {
		String memberid=(String) session.getAttribute("memberid");
		logger.info("이력서등록 화면 보여주기");
		ResumeVO vo=resumeService.selectByMemverid(memberid);
		logger.info("회원정보 조회vo={}",vo);
		model.addAttribute("vo", vo);
		return "resume/register";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String write(@ModelAttribute ResumeVO resumeVo,Model model) {
		logger.info("이력서 등록화면 보여주기 매개변수 resumeVo{}=",resumeVo);
		int cnt=resumeService.insertLangcertification(resumeVo);
		cnt=resumeService.insertCertificate(resumeVo);
		cnt=resumeService.insertCareer(resumeVo);
		cnt=resumeService.insertEducation(resumeVo);
		cnt=resumeService.insertHopeWorking(resumeVo);
		cnt=resumeService.insertLocation(resumeVo);
		cnt=resumeService.insertFirst(resumeVo);
		cnt=resumeService.insertSecond(resumeVo);
		cnt=resumeService.insertThird(resumeVo);
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
			logger.info("글목록 결과, list.size={}",list.size());
			
			//[4] 전체 레코드 개수 조회
			int totalRecord=0;
			totalRecord=boardService.selectTotalCount(searchVo);
			logger.info("전체 레코드 개수 조회 결과, totalRecord={}", totalRecord);
			
			//[5] PaginationInfo에 totalRecord 값 셋팅
			pagingInfo.setTotalRecord(totalRecord);
			
			//3
			model.addAttribute("list", list);
			model.addAttribute("pagingInfo", pagingInfo);
			
			return "board/list";
		}
	}	
}
