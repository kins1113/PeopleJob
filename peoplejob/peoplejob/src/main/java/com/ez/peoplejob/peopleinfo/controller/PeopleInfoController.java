package com.ez.peoplejob.peopleinfo.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.common.PaginationInfo;
import com.ez.peoplejob.common.SearchVO;
import com.ez.peoplejob.common.WebUtility;
import com.ez.peoplejob.resume.model.ResumeService;
import com.ez.peoplejob.resume.model.ResumeVO;

@Controller
@RequestMapping("/peopleinfo")
public class PeopleInfoController {

	private Logger logger=LoggerFactory.getLogger(PeopleInfoController.class);
	@Autowired
	private ResumeService resumeService;
	@RequestMapping("/peopleinfolist.do")
	public String peopleinfolist(
		 HttpSession session,
			@ModelAttribute SearchVO searchVo,Model model) {
	
		logger.info("인재정보 리스트");
		//1]PaginationInfo 객체 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(WebUtility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//2]SearchVo에 페이징 관련 변수 세팅
		searchVo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("셋팅 후 serchVo={}",searchVo);
		return null;
		
		
		
	}
}

