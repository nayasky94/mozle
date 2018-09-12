package com.kh.mozle.faq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {

	@RequestMapping("faq.do")
	public String fnaList(){
		return "board/faqList";
	}
}
