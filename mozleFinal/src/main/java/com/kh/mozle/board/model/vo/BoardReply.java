package com.kh.mozle.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardReply {
//상세글 번호
//댓글 번호
//댓글 내용
//댓글 작성자
//댓글 작성일
	
	private int b_foNo;
	private int b_reNo;
	private String b_reWriter;
	private String b_reContent;
	private Date b_reDate;
	
	
	
	public int getB_foNo() {
		return b_foNo;
	}
	public void setB_foNo(int b_foNo) {
		this.b_foNo = b_foNo;
	}
	public int getB_reNo() {
		return b_reNo;
	}
	public void setB_reNo(int b_reNo) {
		this.b_reNo = b_reNo;
	}
	public String getB_reContent() {
		return b_reContent;
	}
	public void setB_reContent(String b_reContent) {
		this.b_reContent = b_reContent;
	}
	public String getB_reWriter() {
		return b_reWriter;
	}
	public void setB_reWriter(String b_reWriter) {
		this.b_reWriter = b_reWriter;
	}

	public Date getB_reDate() {
		return b_reDate;
	}
	public void setB_reDate(Date b_reDate) {
		this.b_reDate = b_reDate;
	}
	@Override
	public String toString() {
		return "BoardReply [b_foNo=" + b_foNo + ", b_reNo=" + b_reNo + ", b_reWriter=" + b_reWriter + ", b_reContent="
				+ b_reContent + ", b_reDate=" + b_reDate + "]";
	}
	
	
	
	
	
}
