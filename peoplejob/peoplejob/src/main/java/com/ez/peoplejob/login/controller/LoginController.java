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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.member.model.CompanyVO;
import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;
import com.ez.peoplejob.payment.model.PaymentService;
import com.fasterxml.jackson.databind.JsonNode;
 

    
    
@Controller
public class LoginController {
private Logger logger=LoggerFactory.getLogger(LoginController.class);

	@Autowired private MemberService memberService;
	@Autowired private PaymentService paymentService;
	
	private kakao_restapi kakao_restapi = new kakao_restapi();
	
	
	
	@RequestMapping("/mypage/user/userpage.do")
	public String mypage(HttpSession session, Model model) {
		String memberid=(String)session.getAttribute("memberid");
		MemberVO memberVo=memberService.selectByUserid(memberid);
		logger.info("마이페이지 화면 보여주기 memberVo={}",memberVo);
		
		List<Map<String , Object>> list=paymentService.selectPaymentById(memberid);
		logger.info("결제 내역 list.size={}",list.size());
		
		model.addAttribute("memberVo",memberVo);
		model.addAttribute("list",list);
		
		return "mypage/user/userpage";
		
	}
	
	@RequestMapping("/mypage/corp/paymentDetail.do")
	public String paymentDetail(HttpSession session, Model model) {
		String memberid=(String)session.getAttribute("memberid");
		List<Map<String , Object>> list=paymentService.selectPaymentById(memberid);
		logger.info("결제 내역 list.size={}",list.size());
		
		model.addAttribute("list",list);
		
		return "mypage/corp/paymentDetail";
	}
	
	
	@RequestMapping("/service/payment.do")
	public String importInfo(HttpSession session, Model model) {
		String membername=(String) session.getAttribute("memberName");
		String memberId=(String)session.getAttribute("memberid");
		logger.info("ajax로 결제내역 확인을 위한 정보 보내주기, membername={}",membername);
		
		/*List<Map<String , Object>> list=memberService.selectPayInfo(membername);
		model.addAttribute("lsit",list); */
		if(memberId!=null && !memberId.isEmpty()) {
			MemberVO memberVo=memberService.selectByUserid(memberId);
			logger.info("회원 정보 memberVo={}",memberVo);
			CompanyVO companyVo=memberService.selectCompanyById(memberId);
			logger.info("기업 정보 companyVo={}",companyVo);
			model.addAttribute("memberVo",memberVo);
			model.addAttribute("companyVO",companyVo);
			
		}
			return "service/payment";
		
	}
	
	//테스트
	@RequestMapping("/login/kaokaoTest.do")
	public String kaokaoTest() {
		logger.info("카카오테스트 화면 보여주기");
		return "login/kaokaoTest";
	}
	
	@RequestMapping("/login/home.do")
	public String kaokaoTest2() {
		logger.info("카카오테스트 화면 보여주기");
		return "login/home";
	}
	
	
	
	    @RequestMapping(value = "/oauth", produces = "application/json", method = { RequestMethod.GET, RequestMethod.POST })
	    public String kakaoLogin(@RequestParam("code") String code) {
	  
	        return "home";
	    }
	    
	  
	    
	    @RequestMapping(value = "/oauth", produces = "application/json")
	    public String kakaoLogin_post(@RequestParam("code") String code, Model model, HttpSession session) {
	    	
	    	/*
	        System.out.println("로그인 할때 임시 코드값");
	        //카카오 홈페이지에서 받은 결과 코드
	        System.out.println(code);
	        System.out.println("로그인 후 결과값"); */
	    	
	    	logger.info("파라미터 code={}",code);
	        
	        //카카오 rest api 객체 선언
	        kakao_restapi kr = new kakao_restapi();
	        //결과값을 node에 담아줌
	        JsonNode node = kr.getAccessToken(code);
	        //결과값 출력
	        logger.info("node={}",node);
	        
	        //노드 안에 있는 access_token값을 꺼내 문자열로 변환
	        String token = node.get("access_token").toString();
	        //세션에 담아준다.
	        session.setAttribute("token", token);
	        
	        return "login/logininfo";
	    }

	    

	    


	
}
