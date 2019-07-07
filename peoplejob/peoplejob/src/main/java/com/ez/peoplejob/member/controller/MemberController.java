package com.ez.peoplejob.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class MemberController {
	private Logger logger=LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/selectregister.do", method = RequestMethod.GET)
	public String register() {
		logger.info("회원가입 화면 보여주기");
		return "login/selectregister";
	}
	
	@RequestMapping(value="/selectregister.do", method = RequestMethod.POST)
	public String register_post(@ModelAttribute MemberVO memberVo, Model model) {
		logger.info("회원가입 등록 처리 파라미터 memberVo={}",memberVo);
		int acode=memberVo.getAuthorityCode();
		logger.info("회원가입 등록 파라미터, 권한번호 authority_code={}",acode);
		
		int cnt=memberService.insertMember(memberVo);
		logger.info("회원가입 등록 처리 결과 cnt={}",cnt);
		
		String msg="", url="/login/selectregister.do";
		if(cnt>0) {
			msg="회원가입이 완료되었습니다.";
			url="/login/login.do";
		}else {
			msg="회원가입 실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login() {
		logger.info("로그인 화면 보여주기");
		return "login/login";
	}
	
	
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login_post(@RequestParam String memberId, @RequestParam String pwd, Model model, HttpServletRequest request
			,HttpServletResponse response, @RequestParam(required = false) String saveId) {
		logger.info("로그인 화면 처리, 파라미터, memberId={}, pwd={}",memberId, pwd);
		
		//비밀번호 일치하는지 확인
		int result=memberService.loginCheck(memberId, pwd);
		logger.info("로그인 처리 결과 result={}",result);
		
		
		//
		String msg="", url="/login/login.do";
		if(result==MemberService.LOGIN_OK) {
			msg="로그인되었습니다.";
			
			//로그인 성공
			MemberVO memVo=memberService.selectByUserid(memberId);
			logger.info("selectByUserid 결과 memVo={}",memVo);
			
			//[1] session에 저장 (request에서 받아오기)
			HttpSession session=request.getSession();
			session.setAttribute("userid", memberId);
			session.setAttribute("userName", memVo.getMembername());
			
			//[2] 쿠키에 저장
			Cookie ck=new Cookie("ck_userid", memberId);
			ck.setPath("/"); //안쓰면 못찾음 => 다른경로에서 쿠키지우려고하면 접근안되서 path설정해줘야함(/로 설정하면 지금 경로와 하위경로에서 사용가능)
			
			if(saveId!=null) {//아이디 저장하기를 체크한 경우
				//checkbox => 체크하면 on, 안하면 null 
				//(equals(on)으로 하게 되면 null point exception때문에 null이 아닐때는 check, null일 때는 체크안된걸로 확인하기)
				
				ck.setMaxAge(100*24*60*60); //유효기간 100일
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0); //쿠키 삭제
				response.addCookie(ck); 
			}
		
			msg=memberId+"님 로그인되었습니다.";
			url="/main/mainindex.do";
		}else if(result==MemberService.PWD_DISAGREE) {
			msg="비밀번호가 일치하지 않습니다.";
			
		}else if(result==MemberService.ID_NONE){
			msg="아이디가 존재하지 않습니다.";
			
		}else {
			msg="로그인 처리 실패.";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	
	}
} 
