package com.kh.mozle.leaveReason.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.leaveReason.model.dao.LeaveReasonDao;
import com.kh.mozle.leaveReason.model.vo.LeaveReason;

@Service
public class LeaveReasonService {

	@Autowired
	LeaveReasonDao dao;
	public int insertReason(LeaveReason reason) {
		return dao.insertReason(reason);
	}
	
}
