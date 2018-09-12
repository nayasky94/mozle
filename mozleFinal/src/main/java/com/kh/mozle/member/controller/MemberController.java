package com.kh.mozle.member.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.border.Border;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.board.model.vo.BoardReply;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.leaveReason.model.service.LeaveReasonService;
import com.kh.mozle.leaveReason.model.vo.LeaveReason;
import com.kh.mozle.match.model.vo.Match;
import com.kh.mozle.member.model.service.MemberService;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class MemberController {
	
	
	 @Autowired
	 MemberService service;
	 @Autowired
	 LeaveReasonService Lservice;
	 
	 
	 @RequestMapping("agreement.do")
	 public String agreement(){
		 return "member/agreement";
	 }
	 
	 @RequestMapping("memberJoin.do")
	 public String memberJoinForm(){
		 return "member/memberJoinForm";
	 }
	 
	 //아이디 중복값 확인
	 @RequestMapping(value="idCheck.do", produces="application/text; charset=utf-8")
	 public @ResponseBody String idCheck(String id){
		 Member member = new Member();
		 member.setM_id(id);
		 member = service.selectId(member);
		 return member == null ?"ok":"x";
	 }
	 
	 //값을 가지고 관심사 페이지로 이동
	 @RequestMapping("interest.do")
	 	public ModelAndView interestChoice(Member member, ModelAndView mv){
		 mv.addObject("member",member);
		 mv.setViewName("member/interestChoice");
		 return mv;
	 }
	 
	 //최종 회원가입
	 @RequestMapping(value="insertMember.do")
	   public String insertMember(Member member){
		 System.out.println(member);
		 int result = service.insertMember(member);
	      return "redirect:index.do";
	      
	   }
	 
	 //login폼 이동
	 @RequestMapping("memberlogin.do")
	 public String memberLoginForm(){
		 return "member/login";
	 }
	 
	 //login
	 @RequestMapping(value="login.do", method =RequestMethod.POST)
		public ModelAndView login(Member member, HttpSession session, ModelAndView mv){
			System.out.println(member);
			Member user = service.selectMember(member);
			
			
			System.out.println(user);
			if(user!= null && user.getM_pwd().equals(member.getM_pwd())){
				List<ClubMain> list = service.selectInterest(user);
				session.setAttribute("user", user);
				
				mv.addObject("list", list);
				System.out.println("관심 클럽 : "+list);
				mv.setViewName("index");
			}
			return mv;
		}
	 
	 
	 //login ajax
	 @RequestMapping(value="memberCheck.do", produces="application/text; charset=utf-8")
	 public @ResponseBody String memberCheck(Member member){
		 Member user = service.selectMember(member);
		 
		 String returnName = "";
		 
		 if(user!= null && user.getM_pwd().equals(member.getM_pwd())){
				returnName="redirect:login.do";
			}else{
				System.out.println("해당 회원 정보 없음");
				returnName="X";
			}
		 
		 return returnName;
	 }
	 
	 //logout
	 @RequestMapping(value="memberlogout.do", method =RequestMethod.GET)
		public String logout(HttpSession session){
			session.invalidate();
			return "redirect:index.do";
		}
		
	 @RequestMapping("naverLogin.do")
	    public String naverLogin(Member member,HttpSession session, HttpServletRequest request){
		 	System.out.println(member);
	       Member user=service.selectEmailMember(member);
	       
	       System.out.println(user);
	       //이메일이 없을경우 회원가입 폼으로 이동 
	       if(user==null){
	    	   System.out.println("이메일"+member.getM_email());
	    	   request.setAttribute("email",member.getM_email());
	          return "member/memberJoinForm";
	       }
	       session.setAttribute("user", user);
	       System.out.println(user);
	       return "index";
	    }
	 
	 @RequestMapping("myPage.do")
	 public String myPage(){
		 return "member/myPage";
	 }
	 @RequestMapping("find.do")
	 public String find(){
		 //System.out.println("이동");
		 return "member/find";
	 }
	 
	 //회원정보 수정
	 @RequestMapping("updateMember.do")
	 public String updateMember(Member member,HttpSession session){
		 int result = service.updateMember(member);
		 
		 if(0<result){
			 session.setAttribute("user",member);
			 System.out.println("업데이트 완료");
			 
		 }
		 return "redirect:index.do";
	 }
	 
	 //회원 탈퇴 폼 이동
	 @RequestMapping(value="deleteMemberForm.do",method =RequestMethod.GET)
	    public String deleteMemberForm(){
		 return "member/memberLeave";
	 }
	 
	 //회원 탈퇴
	 @RequestMapping("deleteMember.do")
	 public String deleteMember(Member member, LeaveReason reason, HttpSession session){
		 System.out.println(member);
		 reason.setL_id(member.getM_id());
		 int result1 = Lservice.insertReason(reason);
		
		 if(result1>0){
			 int result = service.deleteMember(member);
			 session.invalidate();
		 }
		 System.out.println("아이디: "+member);
		 System.out.println("이유:"+reason);
		 return "redirect:index.do";
	 }
	 
	 //내가 가입한 동호회리스트 화면 이동
	 @RequestMapping("joinedClubList.do")
	 public ModelAndView joinedClubList(HttpSession session, ModelAndView mv){
		 Member m = (Member) session.getAttribute("user");
		 List<ClubMain> list = service.selectClubList(m);
		 mv.addObject("list",list);
		 mv.setViewName("member/joinedClub");
		 
		 return mv;
	 }
	 
	 @RequestMapping("createdClubList.do")
	 public ModelAndView createdClubList(HttpSession session, ModelAndView mv){
		 Member m = (Member) session.getAttribute("user");
		 List<ClubMain> list = service.selectCreatedClubList(m);
		 mv.addObject("list",list);
		 mv.setViewName("member/createdClub");
		 
		 return mv;
	 }
	 
	
	 
	 @RequestMapping("movePage.do")
	 public String movePage(Model model){
		 model.addAttribute("movePage","movePage");
		 return "index";
	 }
	 
	 //아이디찾기
	 @RequestMapping(value="findId.do",produces="application/text; charset=utf-8")
	 public @ResponseBody String findId(Member member, Model model){
		 System.out.println(member);
		 Member user = service.findId(member);
		 System.out.println(user);
		 String returnFlag= "";
		 if(user==null){
			 returnFlag="X";
		 }else{
			 System.out.println("id 찾음");
			 returnFlag=user.getM_id();
		 }
		 return returnFlag;
	 }
	 
		 //비밀번호찾기
		 @RequestMapping(value="findPwd.do",produces="application/text; charset=utf-8")
		 public @ResponseBody String findPwd(Member member){
			 System.out.println(member);
			 Member user = service.findPwd(member);
			 System.out.println(user);
			 String returnFlag= "";
			 if(user==null){
				 returnFlag="X";
				 System.out.println("정보 없음");
			 }else{
				 System.out.println("정보 찾음");
				 returnFlag=user.getM_email();
			 }
			 return returnFlag;
		 }
		 
		 
		 @RequestMapping(value="pwdChange.do",produces="application/text; charset=utf-8")
		 public @ResponseBody String pwdChange(Member member){
			 String newPwd = "";
		        String st[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P",
	        		"Q","R","S","T","U","V","W","X","Y","Z",
		        		"0","1","2","3","4","5","6","7","8","9"};
	        Random r = new Random();
		        for(int i=1; i<=6; i++) {
		            newPwd+=st[r.nextInt(26)];
		        }
			 member.setM_pwd(newPwd);
			 System.out.println("새 비밀번호"+member);
			 int result = service.pwdChange(member);
			 if(result>0){
				
			 }else{
				System.out.println("변경 안됨");
			 }
	
			 return newPwd;
		 }
		 
		 @RequestMapping("myPost.do")
		 public ModelAndView myPost(HttpSession session, ModelAndView mv){
			 System.out.println(session.getAttribute("user"));
			 Member m = (Member)session.getAttribute("user");
			 List<Board> list = service.selectPost(m);
			 List<Match> mList = service.selectMPost(m);
			 List<BoardReply> rList = service.selectReply(m);
			 List<Board>cList =service.selectCPost(m);
			 mv.addObject("list",list);
			 mv.addObject("mList", mList);
			 mv.addObject("rList", rList);
			 mv.addObject("cList", cList);
			 mv.setViewName("member/myPost");
			 System.out.println(rList.toString());
			 return mv;
		 }
		 
		 @RequestMapping("updateInterestForm.do")
		 public String updateInterestForm(){
			 return "member/updateInterest";
		 }
		 
		 @RequestMapping("updateInterest.do")
		 public String updateInterest(Member member, HttpSession session){
			 System.out.println(member);
			 int result = service.updateInterest(member);
			 
			 if(0<result){
				 session.setAttribute("user",member);
			 }
			 
			 return "member/updateInterest";
		 }
		 
		 //경기 알림
		 @RequestMapping("matchCalendar.do")
		 public ModelAndView matchCalendar(HttpSession session, ModelAndView mv){
			 Member m = (Member)session.getAttribute("user");
			 List<Match> list = service.selectMatchCalendar(m);
			 System.out.println(list);
			 mv.addObject("list", list);
			 mv.setViewName("member/matchCalendar");
			 return mv;
		 }
 }
