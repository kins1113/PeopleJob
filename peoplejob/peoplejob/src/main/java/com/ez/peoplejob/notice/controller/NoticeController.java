package com.ez.peoplejob.notice.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ez.peoplejob.notice.model.NoticeService;
import com.ez.peoplejob.notice.model.NoticeVO;

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
		
		return "manager/notice/write";
	}
	
	@RequestMapping(value="/notice/write.do",method = RequestMethod.POST)
	public String write_post(@ModelAttribute NoticeVO vo, Model model) {
		//1
		logger.info("공지사항 쓰기 처리 파라미터 vo={}",vo );
		
		//2
		int cnt=noticeService.insertNotice(vo);
		logger.info("글쓰기 결과 cnt={}",cnt);
		
		//3
		
		String msg="", url="";
		if(cnt>0) {
			msg="공지사항 등록 완료";
			url="/notice/list.do";
			
		}else {
			msg="공지사항 등록 실패";
			url="/notice/write.do";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		//뷰페이지 리턴
		return "manager/notice/list";
		
	}
	
}
