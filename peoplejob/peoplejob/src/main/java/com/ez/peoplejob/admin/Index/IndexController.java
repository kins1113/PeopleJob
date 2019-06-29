package com.ez.peoplejob.admin.Index;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	Logger logger = LoggerFactory.getLogger(IndexController.class);
		
	@RequestMapping("/manager/index.do")
	public String index() {
		logger.info("index 화면 보여주기");
		return "manager/index";
	}
}
