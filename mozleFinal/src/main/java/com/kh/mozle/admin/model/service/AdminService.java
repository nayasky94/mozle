package com.kh.mozle.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.admin.model.dao.AdminDao;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.vo.Member;

@Service
public class AdminService {

	@Autowired
	AdminDao dao;

	public int joinedMemberCount() {
		return dao.joinedMemberCount();
	}

	public List<Member> memberList() {
		return dao.memberList();
	}

	public int countVisitor() {
		return dao.countVisitor();
	}

	public int plusCountVisitor() {
		return dao.plusCountVisitor();
	}
	
	//멤버 정보 수정 (멤버 정보 가져오기 -> 수정폼으로 이동)
	public Member memberSelectOne(int no) {
		return dao.memberSelectOne(no);
	}
	
	//멤버 정보 수정
	public int memberUpdateOne(Member member) {
		return dao.memberUpdateOne(member);
	}
	//멤버 삭제
	public int adminMemberDelete(int no) {
		return dao.adminMemberDelete(no);
	}

	public List<ClubMain> clubData() {
		return dao.clubData();
	}
	

	
}
