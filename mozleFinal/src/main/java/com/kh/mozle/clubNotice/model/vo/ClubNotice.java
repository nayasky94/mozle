package com.kh.mozle.clubNotice.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ClubNotice {
	
	/* 게시물 번호
	 * 제목
	 * 작성자(관리자 ONLY)
	 * 비밀번호
	 * 내용
	 * 등록일
	 * 조회수
	 *  */
	private int n_no;
	private String n_clubname;
	private String n_title;
	private String n_writer;
	private String n_pwd;
	private String n_content;
	private Date n_date;
	private int n_count;
	private int startIndex;
	private int cntPerPage;
	
	public ClubNotice(){}

	public int getN_no() {
		return n_no;
	}

	public void setN_no(int n_no) {
		this.n_no = n_no;
	}

	public String getN_clubname() {
		return n_clubname;
	}

	public void setN_clubname(String n_clubname) {
		this.n_clubname = n_clubname;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_writer() {
		return n_writer;
	}

	public void setN_writer(String n_writer) {
		this.n_writer = n_writer;
	}

	public String getN_pwd() {
		return n_pwd;
	}

	public void setN_pwd(String n_pwd) {
		this.n_pwd = n_pwd;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public Date getN_date() {
		return n_date;
	}

	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}

	public int getN_count() {
		return n_count;
	}

	public void setN_count(int n_count) {
		this.n_count = n_count;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	@Override
	public String toString() {
		return "ClubNotice [n_no=" + n_no + ", n_clubname=" + n_clubname + ", n_title=" + n_title + ", n_writer="
				+ n_writer + ", n_pwd=" + n_pwd + ", n_content=" + n_content + ", n_date=" + n_date + ", n_count="
				+ n_count + ", startIndex=" + startIndex + ", cntPerPage=" + cntPerPage + "]";
	}

	

	
	
	
}
