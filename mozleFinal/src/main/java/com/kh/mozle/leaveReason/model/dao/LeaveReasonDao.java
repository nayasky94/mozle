package com.kh.mozle.leaveReason.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.leaveReason.model.vo.LeaveReason;

@Repository
public class LeaveReasonDao {

	@Autowired
	public SqlSessionTemplate sqlSession;
	
	public int insertReason(LeaveReason reason) {
		return sqlSession.insert("ReasonMapper.insertReason", reason);
	}

}
