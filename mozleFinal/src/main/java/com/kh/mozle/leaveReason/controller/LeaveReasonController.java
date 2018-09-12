package com.kh.mozle.leaveReason.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.mozle.leaveReason.model.service.LeaveReasonService;

@Controller
public class LeaveReasonController {

	@Autowired
	LeaveReasonService service;
	
}
