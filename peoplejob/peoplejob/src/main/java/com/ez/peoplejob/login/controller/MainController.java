package com.ez.peoplejob.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	private Logger logger=LoggerFactory.getLogger(MainController.class);
	@RequestMapping("/main/mainindex.do")
	public String mainindex() {
		logger.info("메인 화면 보여주기");
		return "main/mainindex";
	}
	
}
