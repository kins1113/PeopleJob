package com.ez.peoplejob.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class MemberController {
	private Logger logger=LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/selectregister.do", method = RequestMethod.GET)
	public String register() {
		logger.info("회원가입 화면 보여주기");
		return "login/selectregister";
	}
	
	@RequestMapping(value="/selectregister.do", method = RequestMethod.POST)
	public String register_post(@ModelAttribute MemberVO memberVo, Model model) {
		logger.info("회원가입 등록 처리 파라미터 memberVo={}",memberVo);
		
		int cnt=memberService.insertMember(memberVo);
		logger.info("회원가입 등록 처리 결과 cnt={}",cnt);
		
		String msg="", url="/login/selectregister.do";
		if(cnt>0) {
			msg="회원가입이 완료되었습니다.";
			url="/login/login.do";
		}else {
			msg="회원가입 실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
		
	}
} 
