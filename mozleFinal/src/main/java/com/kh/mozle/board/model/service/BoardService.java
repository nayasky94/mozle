package com.kh.mozle.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.board.model.dao.BoardDao;
import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.club.model.vo.ClubMain;

@Service
public class BoardService {

	@Autowired
	BoardDao dao;

	public int boardTotalCount() {
		return dao.boardTotalCount();
	}

	public List<Board> boardList(int no) {
		return dao.boardList(no);
	}


	public int boardCount(int no) {
		return dao.boardCount(no);
	}

	public Board selectBoard(int no) {
		return dao.selectBoard(no);
	}

	public int writeBoard(Board board) {
		return dao.writeBoard(board);
	}

	public Board updateBoardForm(int no) {
		return dao.updateBoardForm(no);
	}

	public int updateBoard(Board board) {
		return dao.updateBoard(board);
	}

	public int deleteBoard(int no) {
		return dao.deleteBoard(no);
	}
//제각이만든곳
	public int boardTotalCountCname(ClubMain cm) {
		// TODO Auto-generated method stub
		return dao.boardTotalCountCname(cm);
	}

	public List<Board> boardListCname(ClubMain cm) {
		// TODO Auto-generated method stub
		return dao.boardListCname(cm);
	}

	public int writeClubBoard(Board board) {
		// TODO Auto-generated method stub
		return dao.writeClubBoard(board);
	}
	
	
}
