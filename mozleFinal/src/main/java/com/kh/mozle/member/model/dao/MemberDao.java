package com.kh.mozle.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.board.model.vo.BoardReply;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.match.model.vo.Match;
import com.kh.mozle.member.model.vo.Member;

@Repository
public class MemberDao {


	@Autowired
	public SqlSessionTemplate sqlSession;
	
	
	public Member selectMember(Member member) {
		return sqlSession.selectOne("MemberMapper.selectMemberId", member);
	}


	public int insertMember(Member member) {
		return sqlSession.insert("MemberMapper.insertMember", member);
	}

	public Member selectEmailMember(Member member) {
		   System.out.println(member.getM_email()+"   dao");
		   return sqlSession.selectOne("MemberMapper.selecteMemberEmail", member);
		}


	public Member selectMemberId(Member member) {
		return sqlSession.selectOne("MemberMapper.selectMemberId", member);
	}


	public int updateMember(Member member) {
		return sqlSession.update("MemberMapper.updateMember", member);
	}


	public int deleteMember(Member member) {
		return sqlSession.delete("MemberMapper.deleteMember", member);
	}


	public List<ClubMain> selectClubList(Member m) {
		return sqlSession.selectList("clubMapper.joinedClubList", m);
	}




//제각이 추가
	public List<Member> selectClubMemberList(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("MemberMapper.memberClubList",cm);
	}


	public List<Member> selectClubMemberListMember(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("MemberMapper.memberClubListMember",cm);
	}


	public int updateMemberCname(Member member) {
		// TODO Auto-generated method stub
		return sqlSession.update("MemberMapper.updateMemberCname",member);
	}

	public List<ClubMain> selectInterest(Member user) {
		return sqlSession.selectList("clubMapper.selectInterest", user);
	}

	public List<ClubMain> selectCreatedClubList(Member m) {
		return sqlSession.selectList("clubMapper.createdClubList", m);
	}
	public List<Match> selectMatchCalendar(Member m) {
		return sqlSession.selectList("MatchMapper.selectMatchCalendar", m);
	}

	public List<BoardReply> selectReply(Member m) {
		return sqlSession.selectList("replyMapper.selectMyReplyList", m);
	}

	public Member selectId(Member member) {
		return sqlSession.selectOne("MemberMapper.selectId",member);
	}


	public Member selectPwd(Member member) {
		return sqlSession.selectOne("MemberMapper.selectPwd", member);
	}


	public int updatePwd(Member member) {
		return sqlSession.update("MemberMapper.updatePwd", member);
	}


	public List<Board> selectPost(Member m) {
		return sqlSession.selectList("boardMapper.selectPost", m);
	}


	public int updateInterest(Member member) {
		return sqlSession.update("MemberMapper.updateInterest", member);
	}


	public List<Match> selectMPost(Member m) {
		return sqlSession.selectList("MatchMapper.selectMPost", m);
	}


	public List<Board> selectCPost(Member m) {
		return sqlSession.selectList("boardMapper.selectCPost",m );
	}

}
