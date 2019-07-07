package com.ez.peoplejob.notice.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ez.peoplejob.common.PaginationInfo;
import com.ez.peoplejob.common.SearchVO;
import com.ez.peoplejob.common.WebUtility;
import com.ez.peoplejob.notice.model.NoticeService;
import com.ez.peoplejob.notice.model.NoticeVO;

@Controller
public class NoticeController {
	private Logger logger=LoggerFactory.getLogger(NoticeController.class);

	@Autowired private NoticeService noticeService;
	
	@RequestMapping(value="/manager/notice/write.do", method = RequestMethod.GET)
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
			url="/manager/notice/list.do";
			
		}else {
			msg="공지사항 등록 실패";
			url="/notice/write.do";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		//뷰페이지 리턴
		return "common/message";
		
	}
	
	@RequestMapping("/manager/notice/list.do")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		//1
		
		logger.info("공지 글 목록 파라미터 searchVo={}" ,searchVo);
		
		
		//2
		//[1] PaginationInfo 객체 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(WebUtility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//[2] SearchVo에 페이징 관련 변수 셋팅
		searchVo.setRecordCountPerPage(WebUtility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setBlockSize(WebUtility.BLOCK_SIZE);
		logger.info("셋팅 후 searchVo={}", searchVo);
		
		//[3] 조회처리
		List<NoticeVO> list=noticeService.selectAll(searchVo);
		logger.info("공지 글 목록 결과, list.size={}",list.size());
		
		//[4] 전체 레코드 개수 조회
		int totalRecord=0;
		totalRecord=noticeService.selectTotalCount(searchVo);
		logger.info("전체 레코드 개수 조회 결과, totalRecord={}", totalRecord);
		
		//[5] PaginationInfo에 totalRecord 값 셋팅
		pagingInfo.setTotalRecord(totalRecord);
		
		//3
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "manager/notice/list";
	}
	
}
