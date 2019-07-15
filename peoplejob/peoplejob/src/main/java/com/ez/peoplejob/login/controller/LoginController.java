package com.ez.peoplejob.login.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.peoplejob.member.model.CompanyVO;
import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
public class LoginController {
private Logger logger=LoggerFactory.getLogger(LoginController.class);

	@Autowired private MemberService memberService;
	
	
	
	@RequestMapping("/mypage/user/userpage.do")
	public String mypage(HttpSession session, Model model) {
		String memberid=(String)session.getAttribute("memberid");
		MemberVO memberVo=memberService.selectByUserid(memberid);
		logger.info("마이페이지 화면 보여주기 memberVo={}",memberVo);
		model.addAttribute("memberVo",memberVo);
		
		return "mypage/user/userpage";
		
	}
	
	@RequestMapping("/service/payment.do")
	public String importInfo(HttpSession session, Model model) {
		String membername=(String) session.getAttribute("memberName");
		String memberId=(String)session.getAttribute("memberid");
		logger.info("ajax로 결제내역 확인을 위한 정보 보내주기, membername={}",membername);
		
		/*List<Map<String , Object>> list=memberService.selectPayInfo(membername);
		model.addAttribute("lsit",list); */
		MemberVO memberVo=memberService.selectByUserid(memberId);
		logger.info("회원 정보 memberVo={}",memberVo);
		CompanyVO companyVo=memberService.selectCompanyById(memberId);
		logger.info("기업 정보 companyVo={}",companyVo);
		model.addAttribute("memberVo",memberVo);
		model.addAttribute("companyVO",companyVo);
		return "service/payment";
		
	}
	
	
}
