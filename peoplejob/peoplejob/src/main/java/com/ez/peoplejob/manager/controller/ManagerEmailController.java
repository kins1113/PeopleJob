package com.ez.peoplejob.manager.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/manager/email_sms")
public class ManagerEmailController {

	private Logger logger=LoggerFactory.getLogger(ManagerEmailController.class);
	
	@RequestMapping(value = "/emailWrite.do",method = RequestMethod.GET)
	public String emailWrite_get() {
		logger.info("이메일쓰기 화면 보여주기입니다.");
		
		return "manager/email_sms/emailWrite";
	}
	
	@RequestMapping(value = "/emailWrite.do",method = RequestMethod.POST)
	public String emailWrite_post(@RequestParam String emailAddress,
			@RequestParam String title,
			@RequestParam String coment,
			Model model) {
		  logger.info("파라미터 title={}, coment={}",title,coment);
		  logger.info("파라미터 emailAddress={}",emailAddress);
		  
		  coment=coment.replace("<p>", "");
		  coment=coment.replace("</p>", "\n");
		  coment=coment.replace("&nbsp;", "");
		  logger.info("파라미터 변경후  coment={}",coment);
		  
		  //보내는 사람 쪽의 메일 정보
		  String host     = "smtp.naver.com";
		  final String user   = "kins1113";
		  final String password  = "kimok1277!";
		  //받는 사람 메일 주소
		  String to     =emailAddress;

		  
		  // Get the session object
		  Properties props = new Properties();
		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.auth", "true");

		  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(user, password);
		   }
		  });

		  // Compose the message
		  try {
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress(user));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

		   // Subject 메일 제목
		   message.setSubject(title);
		   
		   // Text 메일 내용
		   message.setText(coment);

		   // send the message 메일 보내기
		   Transport.send(message);
		   /*
		   logger.info("message sent successfully...");
			*/

		  } catch (MessagingException e) {
		   e.printStackTrace();
		  }
		  
		  model.addAttribute("msg", "성공");
		  model.addAttribute("url", "/manager/email_sms/emailWrite.do");
		  
		  return "common/message";
	 }
}
