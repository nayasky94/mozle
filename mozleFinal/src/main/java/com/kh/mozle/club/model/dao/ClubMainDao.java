package com.kh.mozle.club.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.vo.Member;

@Repository
public class ClubMainDao {

	@Autowired
	public SqlSessionTemplate sqlSession;

	public List<ClubMain> selectClubList(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("clubMapper.selectClubList",cm);
	}


	public ClubMain selectClubDetail(ClubMain cm) {
		// TODO Auto-generated method stub 
		System.out.println(cm);
		System.out.println("메퍼야가자");
		return sqlSession.selectOne("clubMapper.selectClubDetail",cm);
	}
	public  List<ClubMain> selectClubDetailList(ClubMain cm){
		return sqlSession.selectList("clubMapper.selectClubList",cm);
	}


	public ClubMain selectClubName(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("clubMapper.selectClubDetail",cm);
	}


	public int insertClub(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.insert("clubMapper.insertClub",cm);
	}


	public ClubMain selectCnameLeaderId(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("clubMapper.selectClubCnameLeaderId",cm);
	}


	public int updateClub(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("clubMapper.updateClubMain",cm);
	}


	public int insertMemberId(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("clubMapper.insertMemberId",cm);
	}


	public int insertMemberIdManage(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("clubMapper.insertMemberIdManage",cm);
	}


	public List<ClubMain> selectNewClub() {
		return sqlSession.selectList("clubMapper.selectNewClub");
	}

	/*public Member selectEmailMember(Member member) {
		// TODO Auto-generated method stub
		System.out.println(member);
		return sqlSession.selectOne("MemberMapper.selecteMemberEmail", member);
	}*/

}