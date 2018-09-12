package com.kh.mozle.member.controller;


import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.mozle.member.model.vo.Member;


@Controller
public class EmailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="sendEmail.do",produces="application/text; charset=utf-8")
	public @ResponseBody String sendEmail(Member member){
		
		System.out.println("이동 완료!");
		String email = "mozleteam@gmail.com";
		String tomail = member.getM_email();
		String title = "MOZLE에서 임시 비밀번호를 알려드립니다.";
		String content = "귀하의 임시 비밀번호는 "+member.getM_pwd()+" 입니다.";
		

	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper 
	                        = new MimeMessageHelper(message, true, "UTF-8");
	 
	      messageHelper.setFrom(email);  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo(tomail);     // 받는사람 이메일
	      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	      messageHelper.setText(content);  // 메일 내용
	     
	      mailSender.send(message);
	    } catch(Exception e){
	      System.out.println(e);
	    }
		
	    return "O";
	}
	
	
}
