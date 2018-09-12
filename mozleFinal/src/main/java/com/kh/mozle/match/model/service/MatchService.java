package com.kh.mozle.match.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.match.model.dao.MatchDao;
import com.kh.mozle.match.model.vo.Match;
import com.kh.mozle.match.model.vo.MatchApply;
import com.kh.mozle.match.model.vo.MatchReply;
import com.kh.mozle.member.model.vo.Member;

@Service
public class MatchService {
	
	@Autowired
	MatchDao dao;

	public int writeMatch(Match match) {
		return dao.writeMatch(match);
	}

	public List<Match> selectMatchList(Match match) {
		return dao.selectMatchList(match);
	}

	public Match selectMatch(Match match) {
		return dao.selectMatch(match);
	}

	public List<MatchApply> selectApply(String matchCode) {
		return dao.selectApply(matchCode);
	}
	public List<MatchApply> selectApply(int awayCode) {
		return dao.selectApply(awayCode);
	}

	public int updateAwayCode(Match match) {
		return dao.updateAwayCode(match);
	}

	public int insertMatchReply(MatchReply mReply) {
		return dao.insertMatchReply(mReply);
	}

	public List<MatchReply> selectMatchReply(String matchCode) {
		return dao.selectMatchReply(matchCode);
	}

	public int insertAwayCode(MatchApply matchApply) {
		return dao.insertAwayCode(matchApply);
	}

	public ClubMain selectLeaderId(Member member) {
		return dao.selectLeaderId(member);
	}

	public List<MatchApply> selectApply(MatchApply matchApply) {
		return dao.selectApply(matchApply);
	}

	public int deleteMatch(Match match) {
		return dao.deleteMatch(match);
	}
	public int updateMatch(Match match) {
		return dao.updateMatch(match);
	}

	public List<Match> selectGameDate(Match match) {
		return dao.selectGameDate(match);
	}

	public int updateMReply(MatchReply mReply) {
		return dao.updateMReply(mReply);
	}

	public int mReplyDelete(MatchReply mReply) {
		return dao.mReplyDelete(mReply);
	}
}
