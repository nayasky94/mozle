package com.kh.mozle.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.board.model.vo.BoardReply;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.match.model.vo.Match;
import com.kh.mozle.member.model.dao.MemberDao;
import com.kh.mozle.member.model.vo.Member;

@Service
public class MemberService {
	
	@Autowired
	MemberDao dao;

	public Member selectMember(Member member) {
		//System.out.println(member);
		return dao.selectMember(member);
	}
	public int insertMember(Member member) {
		return dao.insertMember(member);
	}
	public Member selectEmailMember(Member member) {
		return dao.selectEmailMember(member);
		}
	public Member selectId(Member member) {
		return dao.selectMemberId(member);
	}
	public int updateMember(Member member) {
		System.out.println(member);
		return dao.updateMember(member);
	}
	public int deleteMember(Member member) {
		return dao.deleteMember(member);
	}
	public List<ClubMain> selectClubList(Member m) {
		return dao.selectClubList(m);
	}
	public List<Member> selectMemberManageList(ClubMain cm) {
		// TODO Auto-generated method stub
		return dao.selectClubMemberList(cm);
	}
	public List<Member> selectMemberManageListMember(ClubMain cm) {
		// TODO Auto-generated method stub
		return dao.selectClubMemberListMember(cm);
	}
	public int updateMemberCname(Member member) {
		// TODO Auto-generated method stub
		return dao.updateMemberCname(member);
	}
	public List<ClubMain> selectInterest(Member user) {
		return dao.selectInterest(user);
	}

	public List<ClubMain> selectCreatedClubList(Member m) {
		return dao.selectCreatedClubList(m);
	}
	public List<Match> selectMatchCalendar(Member m) {
		return dao.selectMatchCalendar(m);
	}
	public List<BoardReply> selectReply(Member m) {
		return dao.selectReply(m);
	}
	public Member findId(Member member) {
		return dao.selectId(member);
	}
	public Member findPwd(Member member) {
		return dao.selectPwd(member);
	}
	public int pwdChange(Member member) {
		return dao.updatePwd(member);
	}
	public List<Board> selectPost(Member m) {
		return dao.selectPost(m);
	}
	public List<Match> selectMPost(Member m) {
		return dao.selectMPost(m);
	}
	public int updateInterest(Member member) {
		return dao.updateInterest(member);
	}
	public List<Board> selectCPost(Member m) {
		return dao.selectCPost(m);
	}

}
