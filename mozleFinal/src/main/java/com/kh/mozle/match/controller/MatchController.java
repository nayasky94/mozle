package com.kh.mozle.match.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.match.model.service.MatchService;
import com.kh.mozle.match.model.vo.DateData;
import com.kh.mozle.match.model.vo.Match;
import com.kh.mozle.match.model.vo.MatchApply;
import com.kh.mozle.match.model.vo.MatchReply;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class MatchController {
	
	@Autowired
	MatchService service;
	
	@RequestMapping(value = "calendar.do", method = RequestMethod.GET)
	public String calendar(Model model, Match match, HttpServletRequest request, DateData dateData){
		Calendar cal = Calendar.getInstance();
		DateData calendarData;
		//검색 날짜
		if(dateData.getDate().equals("")&&dateData.getMonth().equals("")){
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
		}
		//검색 날짜 end

		Map<String, Integer> today_info =  dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();
		
		//실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		//일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for(int i=1; i<today_info.get("start"); i++){
			calendarData= new DateData(null, null, null, null);
			dateList.add(calendarData);
		}
		
		//날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if(i==today_info.get("today")){
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "today");
			}else{
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		//달력 빈곳 빈 데이터로 삽입
		int index = 7-dateList.size()%7;
		
		if(dateList.size()%7!=0){
			
			for (int i = 0; i < index; i++) {
				calendarData= new DateData(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		String msg = request.getParameter("msg");
		List<Match> list = service.selectGameDate(match);
		//배열에 담음
		model.addAttribute("game", match.getGame());
		model.addAttribute("list",list);
		model.addAttribute("msg",msg);
		model.addAttribute("dateList", dateList);		//날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		return "match/matchSearch";
	}
	
	@RequestMapping("searchMatch.do")
	public ModelAndView searchMatch(Match match,HttpServletRequest request,ModelAndView mv){
		String selectDate = request.getParameter("selectDate");
		if(null != selectDate){
			Date gDate = Date.valueOf(selectDate);
			match.setgDate(gDate);			
		}
		List<Match> list = service.selectMatchList(match);
		mv.addObject("match", match);
		mv.addObject("list", list);
		mv.addObject("gDate", match.getgDate());
		mv.setViewName("match/matchList");
		return mv;
	}
	@RequestMapping("writeMatchForm.do")
	public ModelAndView writeMatchForm(Member member,HttpServletResponse response,ModelAndView mv){
		ClubMain cMain = service.selectLeaderId(member);
		System.out.println(cMain);
		if(cMain != null){
			mv.setViewName("match/writeMatch"); 
		}else{
			mv.addObject("msg", "1");
			mv.setViewName("redirect:calendar.do");
		}
		return mv;
	}
	@RequestMapping("writeMatch.do")
	public String writeMatch(Match match,Member member, HttpServletRequest request,Model model){
		ClubMain cMain = service.selectLeaderId(member);
		String date = request.getParameter("gDates");
		String hour = request.getParameter("hour");
		String minute = request.getParameter("minute");
		String gTime = hour+":"+minute;
		Date gDate = Date.valueOf(date);
		match.setgDate(gDate);
		match.setgTime(gTime);
		match.setHomeCode(cMain.getC_no());
		int result = service.writeMatch(match);
		return "redirect:calendar.do";
	}
	@RequestMapping("matchDetailForm.do")
	public ModelAndView matchDetailForm(Match match,ModelAndView mv){
		Match m = service.selectMatch(match);
		List<MatchApply> list = service.selectApply(match.getMatchCode());
		List<MatchReply> rList = service.selectMatchReply(match.getMatchCode());
		mv.addObject("match", m);
		mv.addObject("list", list);
		mv.addObject("rList", rList);
		mv.setViewName("match/matchDetail");
		return mv;
	}
	@RequestMapping("selectApply.do")
	public void selectApply(MatchApply matchApply,Member member,HttpServletResponse response){
		ClubMain cMain = service.selectLeaderId(member);//로그인 한 아이디가 동호회 리더인지 확인
		if(cMain != null){
			matchApply.setAwayCode(cMain.getC_no());
			List<MatchApply> aList = service.selectApply(matchApply);//조회한 동호회가 신청을 했었는지 확인
			if(aList.isEmpty()){
				int result = service.insertAwayCode(matchApply);//신청을 안했다면 신청
				List<MatchApply> list = service.selectApply(matchApply.getMatchCode()); //신청을 하고 리스트불러옴
				response.setContentType("application/json; charset=UTF-8");
				try {
					new Gson().toJson(list,response.getWriter());
				} catch (JsonIOException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else{
				try {
					response.setCharacterEncoding("UTF-8");
					response.getWriter().print("2");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else{
			try {
				response.setCharacterEncoding("UTF-8");
				response.getWriter().print("1");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping("acceptMatch.do")
	public ModelAndView acceptMatch(Match match,ModelAndView mv){
		int result = service.updateAwayCode(match);
		if(0 < result){
			Match m = service.selectMatch(match);
			mv.addObject("match",m);
		}
		mv.setViewName("match/matchDetail");
		return mv;
	}
	@RequestMapping("writeMatchReply.do")
	public void writeMatchReply(MatchReply mReply ,HttpServletResponse response){
		int result = service.insertMatchReply(mReply);
		if(0 < result){
			List<MatchReply> list = service.selectMatchReply(mReply.getMatchCode());
			response.setContentType("application/json; charset=UTF-8");
			try {
				new Gson().toJson(list,response.getWriter());
			} catch (JsonIOException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	@RequestMapping("deleteMatch.do")
	public String deleteMatch(Match match){
		int result = service.deleteMatch(match);
		return "redirect:calendar.do";
	}
	
	@RequestMapping(value = "matchUpdateForm.do", method=RequestMethod.GET)
	public ModelAndView updateBoard( Match match , ModelAndView mv) {
		match = service.selectMatch(match);
		mv.addObject("match", match);
		mv.setViewName("match/writeUpdateForm");
		return mv;
	}
	
	
	@RequestMapping("writeUpdateMatch.do")
	public ModelAndView update(Match match, ModelAndView mv, HttpServletRequest request) {
		String date = request.getParameter("gDates");
		String hour = request.getParameter("hour");
		String minute = request.getParameter("minute");
		String gTime = hour+":"+minute;
		Date gDate = Date.valueOf(date);
		match.setgDate(gDate);
		match.setgTime(gTime);
		int result = service.updateMatch(match);
		
		mv.addObject("matchCode", match.getMatchCode());
		mv.addObject("awayCode", match.getAwayCode());
		mv.setViewName("redirect:matchDetailForm.do");
		return mv;
	}
	
	@RequestMapping("updateMReply.do")
	public void updateMReply(MatchReply mReply,HttpServletResponse response){
		int result = service.updateMReply(mReply);
		
		List<MatchReply> list = service.selectMatchReply(mReply.getMatchCode());
		response.setContentType("application/json; charset=UTF-8");
		try {
			new Gson().toJson(list,response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	@RequestMapping("mReplyDelete.do")
	public void mReplyDelete(MatchReply mReply,HttpServletResponse response){
		int result = service.mReplyDelete(mReply);
		List<MatchReply> list = service.selectMatchReply(mReply.getMatchCode());
		response.setContentType("application/json; charset=UTF-8");
		try {
			new Gson().toJson(list,response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
