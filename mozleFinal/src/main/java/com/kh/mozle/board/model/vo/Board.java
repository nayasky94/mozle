package com.kh.mozle.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Board {

	/* 게시물 번호
	 * 제목
	 * 작성자
	 * 비밀번호
	 * 내용
	 * 등록일
	 * 조회수
	 * ID
	 */
	
	private int b_no;
	private String b_title;
	private String b_writer;
	private String b_pwd;
	private String b_content;
	private Date b_date;
	private int b_count;
	private String b_id;
	private String b_clubname;
	private int b_replyCnt;
	public Board(){}



	public Board(int b_no, String b_title, String b_writer, String b_pwd, String b_content, Date b_date, int b_count,
			String b_id, String b_clubname) {
		super();
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_writer = b_writer;
		this.b_pwd = b_pwd;
		this.b_content = b_content;
		this.b_date = b_date;
		this.b_count = b_count;
		this.b_id = b_id;
		this.b_clubname = b_clubname;
	}



	public String getB_clubname() {
		return b_clubname;
	}


	public void setB_clubname(String b_clubname) {
		this.b_clubname = b_clubname;
	}


	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public String getB_pwd() {
		return b_pwd;
	}

	public void setB_pwd(String b_pwd) {
		this.b_pwd = b_pwd;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}

	public int getB_count() {
		return b_count;
	}

	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	

	public int getB_replyCnt() {
		return b_replyCnt;
	}



	public void setB_replyCnt(int b_replycnt) {
		this.b_replyCnt = b_replycnt;
	}



	@Override
	public String toString() {
		return "Board [b_no=" + b_no + ", b_title=" + b_title + ", b_writer=" + b_writer + ", b_pwd=" + b_pwd
				+ ", b_content=" + b_content + ", b_date=" + b_date + ", b_count=" + b_count + ", b_id=" + b_id
				+ ", b_clubname=" + b_clubname + "]";
	}

	
	
}
