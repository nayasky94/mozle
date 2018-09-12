package com.kh.mozle.match.model.dao;

import java.sql.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.match.model.vo.Match;
import com.kh.mozle.match.model.vo.MatchApply;
import com.kh.mozle.match.model.vo.MatchReply;
import com.kh.mozle.member.model.vo.Member;

@Repository
public class MatchDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int writeMatch(Match match) {
		return sqlSession.insert("MatchMapper.writeMatch", match);
	}

	public List<Match> selectMatchList(Match match) {
		return sqlSession.selectList("MatchMapper.selectMatchList", match);
	}

	public Match selectMatch(Match match) {
		return sqlSession.selectOne("MatchMapper.selectMatch", match);
	}

	public List<MatchApply> selectApply(String matchCode) {
		return sqlSession.selectList("MatchMapper.selectApply", matchCode);
	}
	public List<MatchApply> selectApply(int awayCode) {
		return sqlSession.selectList("MatchMapper.selectApply2", awayCode);
	}
	public List<MatchApply> selectApply(MatchApply matchApply) {
		return sqlSession.selectList("MatchMapper.selectApply3", matchApply);
	}

	public int updateAwayCode(Match match) {
		return sqlSession.update("MatchMapper.updateAwayCode", match);
	}

	public int insertMatchReply(MatchReply mReply) {
		return sqlSession.insert("MatchMapper.insertMatchReply", mReply);
	}

	public List<MatchReply> selectMatchReply(String matchCode) {
		return sqlSession.selectList("MatchMapper.selectMatchReply", matchCode);
	}

	public int insertAwayCode(MatchApply matchApply) {
		return sqlSession.insert("MatchMapper.insertAwayCode", matchApply);
	}

	public ClubMain selectLeaderId(Member member) {
		return sqlSession.selectOne("MatchMapper.selectLeaderId", member);
	}

	public int deleteMatch(Match match) {
		return sqlSession.update("MatchMapper.deleteMatch", match);
	}
	public int updateMatch(Match match) {		
		return sqlSession.update("MatchMapper.updateMatch", match);	
	}
	public List<Match> selectGameDate(Match match) {
		return sqlSession.selectList("MatchMapper.selectGameDate",match);
	}

	public int updateMReply(MatchReply mReply) {
		return sqlSession.update("MatchMapper.updateMReply",mReply);
	}

	public int mReplyDelete(MatchReply mReply) {
		return sqlSession.update("MatchMapper.mReplyDelete", mReply);
	}



}
