package com.ez.peoplejob.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
private Logger logger=LoggerFactory.getLogger(LoginController.class);

	
	
	@RequestMapping("/service/payment.do")
	public String payment() {
		logger.info("결제 서비스 화면 보여주기");
		return "service/payment";
	}
	
	@RequestMapping("/mypage/user/userpage.do")
	public String mypage() {
		logger.info("마이페이지 화면 보여주기");
		return "mypage/user/userpage";
		
	}
	
	
}
