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
import com.ez.peoplejob.manager.member.model.MemberServiceAdmin;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
public class MemberManagerController {

	private Logger logger=LoggerFactory.getLogger(MemberManagerController.class);
	@Autowired
	private MemberServiceAdmin memberserviceAdmin;
	
	@RequestMapping("/manager/member/memberList.do")
	public String manager_memberList(@ModelAttribute MemberVO memberVo,
			@RequestParam(required = false) String startDay,
			@RequestParam(required = false) String endDay,
			@RequestParam(required = false) String filterKey,
			@RequestParam(required = false) String filterCode,
			
			Model model) {
		logger.info("일반회원 관리 보여주기 파라미터 memberVo={}",memberVo);
		logger.info("파라미터 startDay={}, endDay={}",startDay,endDay);
		logger.info("파라미터 filterCode={}, filterKey={}",filterCode,filterKey);
		
		Map<String, Object> map = new HashMap<String, Object>();
		//날짜 처리
		map.put("startDay", startDay);
		map.put("endDay", endDay);
		map.put("filterKey", filterKey);
		map.put("filterCode", filterCode);
		
		
		//페이징 처리
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setCurrentPage(memberVo.getCurrentPage());
		if(memberVo.getRecordCountPerPage()!=0) {
			pagingInfo.setRecordCountPerPage(memberVo.getRecordCountPerPage());
		}else {
			pagingInfo.setRecordCountPerPage(10);
		}
		pagingInfo.setBlockSize(5);
		
		memberVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		memberVo.setRecordCountPerPage(pagingInfo.getRecordCountPerPage());
		//검색어 처리
		

		map.put("memberVo", memberVo);
		List<MemberVO> list =memberserviceAdmin.selectAllManager(map);	
		logger.info("일반 회원 조회 list.size={}",list.size());
		
		//토탈 레코드 조회
		int totalRecord=memberserviceAdmin.getTotalRecord(map);
		logger.info("일반 회원 조회 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "manager/member/memberList";
	}
}
