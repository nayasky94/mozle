package com.kh.mozle;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.mozle.admin.model.service.AdminService;
import com.kh.mozle.club.model.service.ClubMainService;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.service.MemberService;
import com.kh.mozle.member.model.vo.Member;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	ClubMainService service;
	@Autowired
	MemberService mService;
	@Autowired
	AdminService adminService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		//index로 들어오면 방문자수 카운트 +1
		adminService.plusCountVisitor();
		
		List<ClubMain> newList = service.selectNewClub();
		
		Member member =(Member)session.getAttribute("user");
		System.out.println("로그인 후 인덱스"+member);
		if(member!=null){
			List<ClubMain> list = mService.selectInterest(member);
			model.addAttribute("list", list);
		}
		model.addAttribute("newList", newList);
		System.out.println(newList);
		return "index";
	}
	@RequestMapping(value="header")
	public String header(){
		return "common/header";
		
	}

	
}
