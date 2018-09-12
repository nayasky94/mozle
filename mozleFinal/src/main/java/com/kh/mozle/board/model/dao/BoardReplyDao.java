package com.kh.mozle.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.board.model.vo.BoardReply;

@Repository
public class BoardReplyDao {

	@Autowired
	SqlSessionTemplate session;
	
	public List<BoardReply> selectReplyList(int no) {
		return session.selectList("replyMapper.selectReplyList", no);
	}

	public int replyInsert(BoardReply re) {
		return session.insert("replyMapper.insertReply", re);
	}

	public int deleteReply(BoardReply bo) {
		return session.delete("replyMapper.deleteReply", bo);
	}

	public int replyCount(int no) {
		return session.selectOne("replyMapper.replyCount", no);
	}

	public int deleteAllReply(int no) {
		return session.delete("replyMapper.deleteAllReply", no);
	}

}
