package com.ez.peoplejob.notice.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ez.peoplejob.notice.model.NoticeService;

@Controller
public class NoticeController {
	private Logger logger=LoggerFactory.getLogger(NoticeController.class);

	@Autowired private NoticeService noticeService;
	
	@RequestMapping(value="/notice/write.do", method = RequestMethod.GET)
	public String write_get() {
		
		//1
		logger.info("공지사항 쓰기 화면 보여주기");
		//2
		
		//3
		
		return "notice/write";
	}
}
