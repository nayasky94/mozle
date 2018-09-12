package com.kh.mozle.match.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class MatchReply {
	private String rCode;
	private String matchCode;
	private String m_id;
	private String rContent;
	private String rDate;
	public MatchReply() {
		super();
	}
	public String getrCode() {
		return rCode;
	}
	public void setrCode(String rCode) {
		this.rCode = rCode;
	}
	public String getMatchCode() {
		return matchCode;
	}
	public void setMatchCode(String matchCode) {
		this.matchCode = matchCode;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	@Override
	public String toString() {
		return "MatchReply [rCode=" + rCode + ", matchCode=" + matchCode + ", m_id=" + m_id + ", rContent=" + rContent
				+ ", rDate=" + rDate + "]";
	}
	
	
	
}
