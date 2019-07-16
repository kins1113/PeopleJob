package com.ez.peoplejob.jobopening.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager/jobopening")
public class JobopeningManagerController {

	private Logger logger=LoggerFactory.getLogger(JobopeningController.class);
	
	@RequestMapping("/jobopeningList.do")
	public String jobopeningList() {
		logger.info("메니저 채용공고 리스트 보여주기");
		
		return "manager/jobopening/jobopeningList";
	}
}
