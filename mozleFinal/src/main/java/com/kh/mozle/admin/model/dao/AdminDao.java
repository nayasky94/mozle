package com.kh.mozle.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.vo.Member;

@Repository
public class AdminDao {

	@Autowired
	SqlSessionTemplate session;
	
	public int joinedMemberCount() {
		int result = session.selectOne("adminMapper.joinedMemberCount");
		return result;
	}

	public List<Member> memberList() {
		return session.selectList("adminMapper.memberList");
	}

	public int countVisitor() {
		return session.selectOne("adminMapper.countVisitor");	
	}

	public int plusCountVisitor() {
		return session.update("adminMapper.plusCountVisitor");
	}

	public Member memberSelectOne(int no) {
		return session.selectOne("adminMapper.memberSelectOne", no);
	}

	public int memberUpdateOne(Member member) {
		return session.update("adminMapper.memberUpdateOne", member);
	}

	public int adminMemberDelete(int no) {
		return session.delete("adminMapper.adminMemberDelete", no);
	}

	public List<ClubMain> clubData() {
		return session.selectList("adminMapper.clubData");
	}

	
}
