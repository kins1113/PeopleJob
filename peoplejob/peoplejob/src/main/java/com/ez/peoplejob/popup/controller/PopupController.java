package com.ez.peoplejob.popup.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.peoplejob.popup.model.PopupService;
import com.ez.peoplejob.popup.model.PopupVO;

@Controller
@RequestMapping("/manager/popup")
public class PopupController {
	private Logger logger=LoggerFactory.getLogger(PopupController.class);
	@Autowired private PopupService popupService;
	
	@RequestMapping("/popupList.do")
	public String popupList(Model model) {
		logger.info("팝업 리스트 화면 보여주기");
		
		List<PopupVO> list=popupService.selectPopupAll();
		
		model.addAttribute("list", list);
		logger.info("팝업 조회 결과 list.size={}",list.size());
		return "manager/popup/popupList";
	}
	@RequestMapping(value = "/popupAdd.do",method = RequestMethod.GET)
	public String popupAdd_get() {
		
		return "manager/popup/popupAdd";
	}
	
	@RequestMapping(value = "/popupAdd.do",method = RequestMethod.POST)
	@ResponseBody
	public int popupAdd_post(@ModelAttribute PopupVO popupVo,HttpSession session) {
		int adminCode=(Integer)session.getAttribute("adminCode");
		logger.info("팝업 추가 처리 파라미터 popupVo={} adminCode={}", popupVo,adminCode);
		
		popupVo.setAdminCode(adminCode);
		int result=popupService.insertPopup(popupVo);
		
		return result;
	}
	
	@RequestMapping("/updateUsage.do")
	@ResponseBody
	public int updateUsage(@RequestParam String usageCk, @RequestParam(defaultValue = "0") int popupCode) {
		logger.info("popup사용중 변경 처리 ajax 파라미터 usageCk={},  popupCode={}",usageCk,popupCode);
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("usageCk",usageCk);
		map.put("popupCode", popupCode);
		
		int count=popupService.updateUsage(map);
		logger.info("사용여부 변경 결과 count ={}",count);
		
		int result=0;
		if(count>0) {
			result=PopupService.USAGE_USA;
		}
		
		return result;
	}
	
	/*
	@RequestMapping("/multUpdateUsage.do")
	@ResponseBody
	public int multUpdateUsage(@RequestParam String[] usageCk, @RequestParam int[] popupCode) {
		logger.info("ajax popup사용중 mult변경 v파라미터 usageCk.length={}, popupCode.length={}",usageCk.length, popupCode.length);
		for(int i=0;i<popupCode.length;i++) {
			logger.info(popupCode[i]+" : "+usageCk[i]);
		}
		
		
		Map<String,Object>map=new HashMap<String, Object>();
		map.put("usageCkArr", usageCk);
		map.put("popupCodeArr", popupCode);
		
		
		
		return 111236799;
	}
	*/
	/*
	@RequestMapping("/multUpdateUsage.do")
	@ResponseBody
	public int MUUsage(@RequestParam String[] popupCk, @RequestParam String[] usageCk, @RequestParam int[] popupCode, @RequestParam String NYck) {
		logger.info("여기는 들어옵니까?? 파라미터 NYck={}",NYck);
	
		//String[] usageCkArr=new ;
		//int[] popupCodeArr=null;
		
		for(int i=0;i<popupCk.length;i++) {
			if("on".equals(popupCk[i])) {
				usageCkArr[i]=usageCk[i];
				popupCodeArr[i]=popupCode[i];
			}
		}
		logger.info("시작 : 여기는 들어옵니까?? usageCkArr[]={}, popupCodeArr[]={}",usageCkArr.length,popupCodeArr.length);
		
		Map<String,Object>map=new HashMap<String, Object>();
		map.put("usageCkArr", usageCkArr);
		map.put("popupCodeArr", popupCodeArr);
		map.put("NYck",	NYck);
		
		
		int re = popupService.multUpdateUsage(map);
		logger.info("끝 : 여기는 들어옵니까??  결과 re={}",re);
		
		
		return re;
	}
	*/
	
	
	@RequestMapping("/testUpdate.do")
	@ResponseBody
	public int testpopup(@RequestParam String abc) {
		logger.info("test.do들어옴 파라미터 abc ={} ",abc);
		
		return 1000000;
	}
}
