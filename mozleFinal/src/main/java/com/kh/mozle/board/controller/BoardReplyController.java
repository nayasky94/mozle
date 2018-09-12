package com.kh.mozle.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mozle.board.model.service.BoardReplySerivce;
import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.board.model.vo.BoardReply;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class BoardReplyController {

	@Autowired
	BoardReplySerivce service;
	
	//전체 댓글 조회
		//게시물 상세페이지 들어갈때 boardDetail.do -> 댓글의 데이터도 같이 받아와야 함
		//1. 상세페이지 게시물의 번호
		//2. 해당 게시물의 댓글 번호
		//3. 가져와서 디테일페이지 들어갈때 같이 보내줘야 함.
	@RequestMapping("replyList.do")
	public List<BoardReply> replyList(int no){
		List<BoardReply> replyList = service.selectReplyList(no);
		return replyList;
	}
	
	
	// 댓글 삽입
	@RequestMapping(value="insertReply.do", method=RequestMethod.GET)
	public String replyInsert(Board bo, BoardReply re){
		re.setB_foNo(bo.getB_no());
		
		int fono = re.getB_foNo();
		//insert 처리
		int result = service.replyInsert(re);
		System.out.println("댓글삽입 result : " + result);
		return "redirect:boardDetail1.do?no=" + fono;
	}
	
	
	//댓글 1개 선택 삭제
	@RequestMapping("deleteReply.do")
	public String deleteReply(int bno, int fno){
		//파라미터 확인
		System.out.println("댓글 게시 번호 : " + bno);
		System.out.println("게시글 게시 번호 : " + fno);
		
		//delete 처리
		BoardReply bo = new BoardReply();
		bo.setB_foNo(fno);
		bo.setB_reNo(bno);
		System.out.println("댓글 삭제 boardReplyVO : "+bo);
		int result = service.deleteReply(bo);
		System.out.println("댓글 삭제 result :" + result);
		return "redirect:boardDetail1.do?no=" + fno;
	}
	
	
	//댓글 개수 조회
	public int replyCount(int no){
		return service.replyCount(no);
	}
	
	//게시글에 달린 댓글 전체 삭제
	public int deleteAllReply(int no){
		return service.deleteAllReply(no);
	}
	
	@RequestMapping(value="clubInsertReply.do", method=RequestMethod.GET)
	public String clubReplyInsert(Board bo, BoardReply re,Member member,ClubMain cm,Model model){
		re.setB_foNo(bo.getB_no());
		re.setB_reWriter(member.getM_id());
		
		int fono = re.getB_foNo();
		//insert 처리
		int result = service.replyInsert(re);
		System.out.println("댓글삽입 result : " + result);
		
		return "redirect:ClubboardDetail1.do?no=" + fono+"&c_name="+cm.getC_name();
	}
}
