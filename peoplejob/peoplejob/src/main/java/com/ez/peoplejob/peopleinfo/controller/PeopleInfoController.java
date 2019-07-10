package com.ez.peoplejob.peopleinfo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ez.peoplejob.resume.model.ResumeService;

@Controller
public class PeopleInfoController {

	private Logger logger=LoggerFactory.getLogger(PeopleInfoController.class);
	@Autowired
	private ResumeService resumeService;
	
}
