package com.ez.peoplejob.jobopening.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.jobopening.model.JobopeningService;
import com.ez.peoplejob.jobopening.model.JobopeningVO;

@RequestMapping("/company")
@Controller
public class JobopeningController {
	private Logger logger=LoggerFactory.getLogger(JobopeningController.class);
	@Autowired JobopeningService jobopeningService;
	
	@RequestMapping(value="/jobopening_register.do",method = RequestMethod.GET)
	public String jobopening_register_get() {
		logger.info("채용공고폼");
		return "company/jobopening_register";
	}
	
	@RequestMapping(value="/jobopening_register.do",method = RequestMethod.POST)
	public String jobopening_register_post(@ModelAttribute JobopeningVO vo,Model model) {
		/*
		 * String wel=""; for(int i=0;i<welfare1.size();i++) { if(i!=0) { wel+=","; }
		 * wel+=welfare1.get(i); } vo.setWelfare(wel);
		 */
		/*
		 * String walfare=vo.getWelfare(); String[] arr=walfare.split(",");
		 */
		logger.info("채용공고 등록 파라미터 vo={}",vo);
		
		int cnt=jobopeningService.insertJobOpen(vo);
		logger.info("공고등록결과 cnt={}",cnt);
		String msg="",url="/company/jobopening_register.do";
		if(cnt>0) {
			msg="공고등록성공";
			url="/company/jobopening_list.do";
		}else {
			msg="공고등록 실패";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "common/message";
	}
	@RequestMapping("/jobopening_list.do")
	public String jobopening_list(Model model) {
		logger.info("채용공고 리스트");
		List<JobopeningVO> list=jobopeningService.selectJobOpen();
		model.addAttribute("list",list);
		logger.info("공고 list.size={}",list.size());
		return "company/jobopening_list";
	}
	@RequestMapping("/jobopening_view.do")
	public String jobopening_view(@RequestParam (defaultValue = "0")int jobopening,Model model) {
		logger.info("채용공고뷰보기 파라미터 jobopening={}",jobopening);
		JobopeningVO vo=jobopeningService.selectJobOpenByNo(jobopening);
		logger.info("자세히보기 변수 vo=",vo);
		model.addAttribute("vo", vo);
		return "company/jobopening_view";
	}
}
