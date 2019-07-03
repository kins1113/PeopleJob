package com.ez.peoplejob.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
private Logger logger=LoggerFactory.getLogger(LoginController.class);

	@RequestMapping("/login/login.do")
	public String login() {
		logger.info("로그인 화면 보여주기");
		return "login/login";
	}
	
	@RequestMapping("/login/selectregister.do")
	public String register() {
		logger.info("회원가입 화면 보여주기");
		return "login/selectregister";
	}
	
	@RequestMapping("/service/payment.do")
	public String payment() {
		logger.info("결제 서비스 화면 보여주기");
		return "service/payment";
	}
	
	@RequestMapping("/login/findId.do")
	public String findId() {
		logger.info("아이디/비밀번호 찾기 화면 보여주기");
		return "login/findId";
	}
}
