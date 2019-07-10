package com.ez.peoplejob.service.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ez.peoplejob.service.model.ServiceService;


@Controller
public class ServiceController {
	private Logger logger=LoggerFactory.getLogger(ServiceController.class);
	@Autowired private ServiceService serviceService;
	@RequestMapping(value="/manager/service/register.do",method = RequestMethod.GET)
	public String register_get() {
		logger.info("서비스 등록 화면 보여주기");
		return "manager/service/register";
		
	}
}
