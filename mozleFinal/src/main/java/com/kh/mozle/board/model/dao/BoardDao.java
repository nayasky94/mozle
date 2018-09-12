package com.kh.mozle.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.club.model.vo.ClubMain;

@Repository
public class BoardDao {

	@Autowired
	SqlSessionTemplate session;

	public int boardTotalCount() {
		return session.selectOne("boardMapper.boardCount");
	}

	public List<Board> boardList(int no) {
		return session.selectList("boardMapper.selectBoardList", no);
	}

	public int boardCount(int no) {
		return session.update("boardMapper.updateCount", no);
	}

	public Board selectBoard(int no) {
		return session.selectOne("boardMapper.selectBoard", no);
	}

	public int writeBoard(Board board) {
		return session.insert("boardMapper.insertBoard", board);
	}

	public Board updateBoardForm(int no) {
		return session.selectOne("boardMapper.selectBoard", no);
	}

	public int updateBoard(Board board) {
		int a = session.update("boardMapper.updateBoard", board);
		return a;
	}

	public int deleteBoard(int no) {
		return session.delete("boardMapper.deleteBoard", no);
	}

	public int boardTotalCountCname(ClubMain cm) {
		// TODO Auto-generated method stub
		return session.selectOne("boardMapper.boardCountCname",cm);
	}

	public List<Board> boardListCname(ClubMain cm) {
		// TODO Auto-generated method stub
		return session.selectList("boardMapper.selectBoardListCname", cm);
	}

	public int writeClubBoard(Board board) {
		// TODO Auto-generated method stub
		return session.insert("boardMapper.insertClubBoard", board);
	}

	
}
