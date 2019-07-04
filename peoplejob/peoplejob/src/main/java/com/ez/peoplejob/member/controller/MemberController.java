package com.ez.peoplejob.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.peoplejob.member.model.MemberService;

@Controller
@RequestMapping("/login")
public class MemberController {
	private Logger logger=LoggerFactory.getLogger(MemberController.class);
	
	private MemberService memberService;
	
	        
} 
