package com.ez.peoplejob.member.controller;

import java.util.List;
import java.util.Map;

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

import com.ez.peoplejob.common.FileUploadUtility;
import com.ez.peoplejob.member.model.CompanyVO;
import com.ez.peoplejob.member.model.MemberService;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class MemberController {
	private Logger logger=LoggerFactory.getLogger(MemberController.class);
	@Autowired private FileUploadUtility fileUploadUtil;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/registerU.do", method = RequestMethod.GET)
	public String registerU() {
		logger.info("개인 회원가입 화면 보여주기");
		return "login/registerU";
	}
	
	@RequestMapping(value="/registerC.do", method = RequestMethod.GET)
	public String registerC() {
		logger.info("기업 회원가입 화면 보여주기");
		return "login/registerC";
	}
	
	
	@RequestMapping(value="/registerU.do", method = RequestMethod.POST)
	public String register_post(@ModelAttribute MemberVO memberVo, Model model) {
		logger.info("회원가입 등록 처리 파라미터 memberVo={}",memberVo);
		memberVo.setAuthorityCode(1);
		logger.info("회원가입 등록 파라미터, 권한번호 authority_code={}",memberVo.getAuthorityCode());
		
		int cnt=memberService.insertMember(memberVo);
		logger.info("회원가입 등록 처리 결과 cnt={}",cnt);
		
		String msg="", url="/login/registerC.do";
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
	
	@RequestMapping(value="/registerC.do", method = RequestMethod.POST)
	public String register2_post(@ModelAttribute MemberVO memberVo, Model model, 
			@ModelAttribute CompanyVO companyVo, HttpServletRequest request) {
		logger.info("기업회원가입 파라미터, memberVo={}",memberVo);
		logger.info("기업회원가입 파라미터, companyVo={}",companyVo);
		memberVo.setAuthorityCode(2);
		
		List<Map<String,Object>>list=fileUploadUtil.fileUpload(request);
		 
		String imageURL="";
		for(Map<String,Object>map:list) {
			imageURL=(String)map.get("fileName");
		}
		
		
		int cnt=memberService.insertMember(memberVo);
		logger.info("기업회원가입 처리 결과 cnt={}",cnt);
		
		String msg="", url="/login/registerC.do";
		if(cnt>0) {
			companyVo.setImage(imageURL);
			int cnt2=memberService.insertCompany(companyVo);
			logger.info("기업회원가입 처리 시, 회사등록 결과 cnt2={}",cnt2);
			if(cnt2>0) {
				msg="기업회원 회원가입이 완료되었습니다. "
						+ "관리자의 승인을 받은 후 채용공고를 등록할 수 있습니다.";
				url="/login/login.do";
			}else {
				msg="기업등록 실패";
			}
		}else {
			msg="기업회원 회원가입 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
		
	}
	
	@RequestMapping("/person_update.do")
	public String person_update(HttpSession session, Model model) {
		logger.info("개인회원 정보수정 화면 보여주기");
		String memberId=(String) session.getAttribute("memberid");
		MemberVO memberVo=memberService.selectByUserid(memberId);
		logger.info("selectByUserid 결과 memberVo={}",memberVo);
		
		model.addAttribute("memberVo",memberVo);
		return "login/person_update";
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
			session.setAttribute("memberid", memberId);
			session.setAttribute("author_code", memVo.getAuthorityCode());
			//session.setAttribute("userName", memVo.getMembername());
			
			//[2] 쿠키에 저장
			Cookie ck=new Cookie("ck_memberid", memberId);
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
	
	@RequestMapping("/login/findId.do")
	public String findId() {
		logger.info("아이디/비밀번호 찾기 화면 보여주기");
		return "login/findId";
	}
} 
