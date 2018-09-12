package com.kh.mozle.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mozle.admin.model.service.AdminService;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class AdminController {

   @Autowired
   AdminService service;
   
   
   
   //admin 메인 페이지 이동
   @RequestMapping("adminIndex.do")
   public String adminIndex(){
      return "redirect:memberChart.do";
   }
   
   
   @RequestMapping("joinedMemberCount.do")
   public ModelAndView joinedMemberCount(){
      ModelAndView mv = new ModelAndView();
      int result = service.joinedMemberCount();
      mv.addObject("joinedMemberCount", result);
      System.out.println(result);
      return mv;
   }
   
   //회원 차트 정보(누적 가입 회원, 방문자 수, 탈퇴 사유)
   @RequestMapping("memberChart.do")
   public ModelAndView memberChart(){
      //누적 가입 회원
   int memberCount = service.joinedMemberCount();
   System.out.println("memberCount :" + memberCount);
   //누적 방문자 수 
   int countVisitor = service.countVisitor();
   System.out.println("countVisitor : "+countVisitor);
   //탈퇴 사유 수 조회

   ModelAndView mv = new ModelAndView();
   mv.addObject("memberCount", memberCount);
   mv.addObject("countVisitor", countVisitor);
   mv.setViewName("admin/adminIndex");   
      return mv;
   }
   
   //가입된 회원 정보 리스트
   @RequestMapping("memberData.do")
   public ModelAndView memberData(){
      List<Member> list = service.memberList();
      ModelAndView mv = new ModelAndView();
      mv.addObject("memberList", list);
      mv.setViewName("admin/memberData");
      return mv;
   }
   
   
   
   //개인정보 수정폼 이동
   @RequestMapping("adminMemberUpdateForm.do")
   public ModelAndView adminMemberUpdateForm(int no){
      ModelAndView mv = new ModelAndView();
      Member member = service.memberSelectOne(no);
      mv.addObject("member", member);
      mv.setViewName("admin/adminMemberUpdatePage");
      return mv;
   }
   
   
   //개인정보 수정
   @RequestMapping("adminMemberUpdate.do")
   public String adminMemberUpdate(Member member){
      int result = service.memberUpdateOne(member);
      return "redirect:memberData.do";
   }
   
   //개인정보 삭제
   @RequestMapping("adminMemberDelete.do")
   public String adminMemberDelete(int no){
      int result = service.adminMemberDelete(no);
      return "redirect:memberData.do";
   }
   
   //게시물 통계 정보
   @RequestMapping("boardChart.do")
   public String boardChart(){
      return "admin/boardChart";
   }
   
   //동호회 통계 정보
   @RequestMapping("clubChart.do")
   public String clubChart(){
      return "admin/clubChart";
   }

   //동호회 리스트
   @RequestMapping("clubData.do")
   public ModelAndView clubData(){
      ModelAndView mv = new ModelAndView();
      List<ClubMain> list = service.clubData();
      mv.addObject("clubData", list);
      mv.setViewName("admin/clubData");
      return mv;
   }

   //동호회원 데이터
   @RequestMapping("clubMemberData.do")
   public String clubMemberData(){
      return "admin/clubMemberData";
   }
   
   
}