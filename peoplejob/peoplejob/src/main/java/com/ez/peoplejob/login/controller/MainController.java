package com.ez.peoplejob.login.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.peoplejob.payment.model.PaymentService;

@Controller
public class MainController {

	private Logger logger=LoggerFactory.getLogger(MainController.class);
	@Autowired private PaymentService paymentService;
	
	@RequestMapping("/main/mainindex.do")
	public String mainindex(Model model) {
		logger.info("메인 화면 보여주기");
		List<Map<String, Object>> list=paymentService.selectMainAdvertiseByServiceCode(1);
		model.addAttribute("list",list);
		
		return "main/mainindex";
	}
	
}
