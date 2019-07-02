package com.ez.peoplejob.resume.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.peoplejob.resume.model.ResumeService;
import com.ez.peoplejob.resume.model.ResumeVO;

@Controller
@RequestMapping("/resume")
public class ResumeController {
	
	@Autowired
	private ResumeService resumeService;
	private Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@RequestMapping("/register.do")
	public void register() {
		logger.info("이력서등록 화면 보여주기");
		
	}
	@RequestMapping("/resumeWrite.do")
	public String write(@ModelAttribute ResumeVO resumeVo,Model model) {
		logger.info("이력서 등록화면 보여주기 매개변수 resumeVo{}=",resumeVo);
		int cnt=resumeService.insertResume(resumeVo);
		logger.info("이력서 등록 결과 cnt ={}",cnt);
		String msg="",url="/resume/register.do";
		if(cnt>0) {
			msg="이력서 등록 성공";
			url="/resume/register.do";
		}else {
			msg="이력서 등록 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
}