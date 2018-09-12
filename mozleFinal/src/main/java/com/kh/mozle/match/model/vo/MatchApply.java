package com.kh.mozle.match.model.vo;

import org.springframework.stereotype.Component;

@Component
public class MatchApply {
	private String matchCode;
	private int awayCode;
	private char choice;
	private String aName;
	
	public MatchApply() {
		super();
	}
	public String getMatchCode() {
		return matchCode;
	}
	public void setMatchCode(String matchCode) {
		this.matchCode = matchCode;
	}
	public int getAwayCode() {
		return awayCode;
	}
	public void setAwayCode(int awayCode) {
		this.awayCode = awayCode;
	}
	public char getChoice() {
		return choice;
	}
	public void setChoice(char choice) {
		this.choice = choice;
	}
	
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	@Override
	public String toString() {
		return "MatchApply [matchCode=" + matchCode + ", awayCode=" + awayCode + ", choice=" + choice + "]";
	}
	
	
	
	
	
	
	
}
