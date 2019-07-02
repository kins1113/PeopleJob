package com.ez.peoplejob.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.board.model.BoardKindService;
import com.ez.peoplejob.board.model.BoardKindVO;
import com.ez.peoplejob.board.model.BoardService;
import com.ez.peoplejob.board.model.BoardVO;

@Controller
@RequestMapping("/manager/board")
public class BoardController {
	private Logger logger=LoggerFactory.getLogger(BoardController.class);
	@Autowired private BoardKindService boardKindService; 
	@Autowired private BoardService boardService;
	
	@RequestMapping(value="/boardAdd.do",method = RequestMethod.GET)
	public String boardAdd_get(Model model) {
		logger.info("게시판 추가 보여주기");
		//1	카테고리 전체 조회해서 뿌려주기
		List<BoardKindVO> BKList=boardKindService.selectBKind();
		logger.info("게시판 추가 보여주기 결과 BKList={}",BKList.size());
		//2 
		
		model.addAttribute("BKList",BKList);
		
		return "manager/board/boardAdd";
	}
	
	@RequestMapping(value="/boardKindAdd.do",method=RequestMethod.POST)
	public String boardKindAdd(@RequestParam String type,Model model) {
		logger.info("게시판 카테고리 추가 처리, 파라미터 type={}",type);
		
		int re=boardKindService.insertBKind(type);
		logger.info("게시판 카테고리 추가 처리, re={}",re);
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
	
	@RequestMapping("/boardInsert.do")
	public String boardInsert(@ModelAttribute BoardVO boardVo,
			HttpServletRequest request,
			Model model) {
		String adminid=(String) request.getSession().getAttribute("adminid");
		logger.info("계시판 추가 처리, 파라미터 boardVo={}\n adminid={}",boardVo,adminid);
		boardVo.setFirAdmin(adminid);
		int re=boardService.insetBoard(boardVo);
		String msg="", url="/manager/board/boardAdd.do";
		if(re>0) {
			msg="게시판 등록 성공";
		}else {
			msg="게시판 등록 실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}