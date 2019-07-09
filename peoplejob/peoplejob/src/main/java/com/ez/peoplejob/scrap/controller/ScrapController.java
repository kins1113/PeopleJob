package com.ez.peoplejob.scrap.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.scrap.model.ScrapService;
import com.ez.peoplejob.scrap.model.ScrapVO;
@RequestMapping("/scrap")
@Controller
public class ScrapController {
	private Logger logger=LoggerFactory.getLogger(ScrapController.class);
	@Autowired ScrapService scrapService;
	@RequestMapping("/insertscrap.do")
	public String insert_scrap(@RequestParam int jobopening,Model model) {
		logger.info("스크랩 추가");
		ScrapVO vo=new ScrapVO();
		vo.setJobopeningCode(jobopening);
		vo.setScrapmemberCode(2);
		int cnt=scrapService.insertScrap(vo);
		String msg="",url="/scrap/scrap_list.do";
		if(cnt>0) {
			msg="추가성공";
		}else {
			msg="추가실패";
			url="/company/jobopening_view.do?jobopening="+jobopening;
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	@RequestMapping("/scrap_list.do")
	public String scrap_list() {
		logger.info("스크랩 리스트");
		return "scrap/scrap_list";
	}
}
