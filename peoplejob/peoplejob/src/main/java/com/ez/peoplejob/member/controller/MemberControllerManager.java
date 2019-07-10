package com.ez.peoplejob.member.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.common.PaginationInfo;
import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
@RequestMapping("/manager/member")
public class MemberControllerManager {
	private Logger logger=LoggerFactory.getLogger(MemberControllerManager.class);
	@Autowired private MemberService memberService;
	
	@RequestMapping("/memberList.do")
	public String manager_memberList(@ModelAttribute MemberVO memberVo,
			@RequestParam(defaultValue = "10") int recordCountPerPage,
			@RequestParam(required = false) String startDay,
			@RequestParam(required = false) String endDay,
			Model model) {
		logger.info("일반회원 관리 보여주기 파라미터 memberVo={}",memberVo);
		logger.info("recordCountPerPage={}",recordCountPerPage);
		logger.info("startDay={} endDay={}",startDay, endDay);
		
		//페이징 처리를 해보자~!
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(5);
		pagingInfo.setRecordCountPerPage(recordCountPerPage);
		pagingInfo.setCurrentPage(memberVo.getCurrentPage());
		
		memberVo.setBlockSize(5);
		memberVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		memberVo.setRecordCountPerPage(recordCountPerPage);
		logger.info("일반회원 관리 보여주기  페이징 처리후 memberVo={}",memberVo);
		
		
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("memberVo", memberVo);
		map.put("startDay", startDay);
		map.put("endDay", endDay);
		
		List<MemberVO> list=memberService.selectAllManager(map);
		logger.info("일반회원 조회 결과 list.size={}",list.size());
		
		//토탈 레코드 추가
		int totalRecord=memberService.getTotalRecord(map);
		logger.info("토탈레코드 조회 결과 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		return "manager/member/memberList";
	}
	
}
