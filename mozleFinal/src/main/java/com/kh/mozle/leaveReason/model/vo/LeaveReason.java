package com.kh.mozle.leaveReason.model.vo;

import org.springframework.stereotype.Component;

@Component
public class LeaveReason {
	private String l_id;
	private int l_reason;
	private String l_detailreason;
	
	
	public LeaveReason(){}
	
	public LeaveReason(String l_id, int l_reason, String l_detailreason) {
		super();
		this.l_id = l_id;
		this.l_reason = l_reason;
		this.l_detailreason = l_detailreason;
	}

	public String getL_id() {
		return l_id;
	}

	public void setL_id(String l_id) {
		this.l_id = l_id;
	}

	public int getL_reason() {
		return l_reason;
	}

	public void setL_reason(int l_reason) {
		this.l_reason = l_reason;
	}

	public String getL_detailreason() {
		return l_detailreason;
	}

	public void setL_detailreason(String l_detailreason) {
		this.l_detailreason = l_detailreason;
	}




	@Override
	public String toString() {
		return "LeaveReason [l_id=" + l_id + ", l_reason=" + l_reason + ", l_detailreason=" + l_detailreason + "]";
	}
	
	
}
