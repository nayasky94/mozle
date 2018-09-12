package com.kh.mozle.match.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Match {

	private String matchCode; //매치코드
	private int homeCode; //작성한 팀 코드
	private int awayCode; //상대 팀 코드
	private String area; //경기 지역
	private String field; //경기장
	private int pay; //경기장 비용
	private String uColor; //유니폼 컬러
	private String content; //남기는 말
	private Date wDate; //글 쓴 날짜
	private String game; //경기 종목
	private Date gDate; //경기일
	private String gTime;//경기 시작 시간
	private String hName;
	private String aName;
	private String m_id;
	private String year;
	private String month;
	private String day;
	private int subdate;
	private String jibun;

	public Match() {
		super();
	}
	
	public String getMatchCode() {
		return matchCode;
	}
	public void setMatchCode(String matchCode) {
		this.matchCode = matchCode;
	}
	public int getHomeCode() {
		return homeCode;
	}

	public void setHomeCode(int homeCode) {
		this.homeCode = homeCode;
	}

	public int getAwayCode() {
		return awayCode;
	}

	public void setAwayCode(int awayCode) {
		this.awayCode = awayCode;
	}

	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public String getuColor() {
		return uColor;
	}
	public void setuColor(String uColor) {
		this.uColor = uColor;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getwDate() {
		return wDate;
	}
	public void setwDate(Date wDate) {
		this.wDate = wDate;
	}

	public String getGame() {
		return game;
	}

	public void setGame(String game) {
		this.game = game;
	}

	public Date getgDate() {
		return gDate;
	}

	public void setgDate(Date gDate) {
		this.gDate = gDate;
	}
	public String getgTime() {
		return gTime;
	}
	
	public void setgTime(String gTime) {
		this.gTime = gTime;
	}
	public String gethName() {
		return hName;
	}
	
	public void sethName(String hName) {
		this.hName = hName;
	}
	
	public String getaName() {
		return aName;
	}
	
	public void setaName(String aName) {
		this.aName = aName;
	}
	

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	public int getSubdate() {
		return subdate;
	}

	public void setSubdate(int subdate) {
		this.subdate = subdate;
	}
	
	

	public String getJibun() {
		return jibun;
	}

	public void setJibun(String jibun) {
		this.jibun = jibun;
	}

	@Override
	public String toString() {
		return "Match [matchCode=" + matchCode + ", homeCode=" + homeCode + ", awayCode=" + awayCode + ", area=" + area
				+ ", field=" + field + ", pay=" + pay + ", uColor=" + uColor + ", content=" + content + ", wDate="
				+ wDate + ", game=" + game + ", gDate=" + gDate + ", gTime=" + gTime + ", hName=" + hName + ", aName="
				+ aName + ", m_id=" + m_id + ", year=" + year + ", month=" + month + ", day=" + day + "]";
	}
	
	

	
	
}
