package com.ez.peoplejob.manager.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.board.model.BoardKindService;
import com.ez.peoplejob.board.model.BoardKindVO;

@Controller
@RequestMapping("/manager/board")
public class ManagerBoardController {
	private Logger logger=LoggerFactory.getLogger(ManagerBoardController.class);
	@Autowired private BoardKindService boardKindService; 
	
	@RequestMapping(value="/boardAdd.do",method = RequestMethod.GET)
	public String boardAdd_get(Model model) {
		logger.info("게시판 추가 보여주기");
		//1	카테고리 전체 조회해서 뿌려주기
		List<BoardKindVO> BKList=boardKindService.selectBKind();
		
		//2 
		
		model.addAttribute("BKList",BKList);
		
		return "manager/board/boardAdd";
	}
	
	@RequestMapping(value="/boardKindAdd.do",method=RequestMethod.POST)
	public String boardKindAdd(@RequestParam String type,Model model) {
		logger.info("게시판 카테고리 추가 처리, 파라미터 type={}",type);
		
		int re=boardKindService.insertBKind(type);
		String msg="",url="/manager/board/boardAdd.do";
		if(re>0) {
			msg="카테고리 추가 성공";
		}else {
			msg="카테고리 추가 실패";
		}
		
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
		return "common/message";
	}
}
