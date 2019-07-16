package com.ez.peoplejob.resume.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.peoplejob.jobopening.controller.JobopeningController;

@Controller
@RequestMapping("/manager/resume")
public class ResumeManagerController {
	
private Logger logger=LoggerFactory.getLogger(JobopeningController.class);
	
	@RequestMapping(value="/resumeList.do",method = RequestMethod.GET)
	public String resumeListList_view() {
		logger.info("이력서 리스트 보여주기");
		
		return "manager/resume/resumeList";
	}
	
	@RequestMapping(value="/resumeList.do",method=RequestMethod.POST)
	@ResponseBody
	public List<Map<String, Object>> resumeList(){
		logger.info("이력서 리스트 가져오기");
		List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();
		
		
		return list; 
	}
	
	
}
