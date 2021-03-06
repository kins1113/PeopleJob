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

import com.ez.peoplejob.jobopening.model.JobopeningService;
import com.ez.peoplejob.jobopening.model.JobopeningVO;
import com.ez.peoplejob.member.model.CompanyVO;
import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;
import com.ez.peoplejob.payment.model.PaymentService;
import com.ez.peoplejob.scrap.model.ScrapService;
import com.ez.peoplejob.scrap.model.ScrapVO;
import com.fasterxml.jackson.databind.JsonNode;
 
@Controller
public class LoginController {
private Logger logger=LoggerFactory.getLogger(LoginController.class);

	@Autowired private MemberService memberService;
	@Autowired private PaymentService paymentService;
	@Autowired private ScrapService scrapService;
	@Autowired private JobopeningService jobService;
	
	private kakao_restapi kakao_restapi = new kakao_restapi();
	
	
	
	@RequestMapping("/main/mainindex.do")
	public String mainpage(Model model) {
		logger.info("메인화면 보여주기!!!");
		List<Map<String, Object>> list=paymentService.selectMainAdvertiseByServiceCode(1);
		logger.info("서비스 결제 (vvip관) 리스트, list.size={}",list);
		//List<Map<String, Object>> deadlineList=jobService.deadlineimminentBymonth();
		//logger.info("마감 임박 공채 리스트, deadlineList.size={}",deadlineList);
		
		
		model.addAttribute("list",list);
		//model.addAttribute("deadlineList",deadlineList);
		
		return "main/mainindex";
	}
	
	
	
	@RequestMapping("/mypage/user/userpage.do")
	public String mypage(HttpSession session, Model model) {
		String memberid=(String)session.getAttribute("memberid");
		MemberVO memberVo=memberService.selectByUserid(memberid);
		logger.info("마이페이지 화면!! 보여주기 memberVo={}",memberVo);
		
		List<Map<String , Object>> list=paymentService.selectPaymentById(memberid);
		logger.info("결제결제결제 내역 list.size={}",list.size());
		List<ScrapVO> scraplist=scrapService.selectScrap(memberVo.getMemberCode());
		logger.info("스크랩 리스트 scraplist.size={}",scraplist.size());
		List<JobopeningVO> joblist=jobService.selectJobopeningBycomcode(memberVo.getCompanyCode());
		logger.info("채용공고 리스트 joblist.size={}",joblist.size());
		
		model.addAttribute("memberVo",memberVo);
		model.addAttribute("list",list);
		model.addAttribute("scraplist",scraplist);
		model.addAttribute("joblist",joblist);
		
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
