package com.kh.mozle.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.board.model.dao.BoardReplyDao;
import com.kh.mozle.board.model.vo.BoardReply;

@Service
public class BoardReplySerivce {
		
	@Autowired
	BoardReplyDao dao;
	
	public List<BoardReply> selectReplyList(int no) {
		return dao.selectReplyList(no);
	}

	public int replyInsert(BoardReply re) {
		return dao.replyInsert(re);
	}

	public int deleteReply(BoardReply bo) {
		return dao.deleteReply(bo);
	}

	public int replyCount(int no) {
		return dao.replyCount(no);
	}

	public int deleteAllReply(int no) {
		return dao.deleteAllReply(no);
	}

}
