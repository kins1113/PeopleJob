package com.ez.peoplejob.popup.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PopupController {
	private Logger logger=LoggerFactory.getLogger(PopupController.class);
	
	@RequestMapping("/manager/popup/popupList.do")
	public String popupList() {
		logger.info("팝업 리스트 화면 보여주기");
		
		return "manager/popup/popupList";
	}
	@RequestMapping("/manager/popup/popupAdd.do")
	public String popupAdd() {
		logger.info("팝업 리스트 화면 보여주기");
		
		return "manager/popup/popupAdd";
	}
}
