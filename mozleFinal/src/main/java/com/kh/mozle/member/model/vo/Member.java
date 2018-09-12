package com.kh.mozle.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private int m_no;
	private String m_id;
	private String m_pwd;
	private String m_name;
	private String m_gender;
	private String m_birth;
	private String m_phone;
	private String m_email;
	private String m_address;
	private String m_cname;
	private int m_grade;
	private int m_cgrade;
	private String m_location;
	private String m_topic;
	
	
	public Member() {
		super();
	}


	public Member(int m_no, String m_id, String m_pwd, String m_name, String m_gender, String m_birth, String m_phone,
			String m_email, String m_address, String m_cname, int m_grade, int m_cgrade, String m_location,
			String m_topic) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_gender = m_gender;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
		this.m_email = m_email;
		this.m_address = m_address;
		this.m_cname = m_cname;
		this.m_grade = m_grade;
		this.m_cgrade = m_cgrade;
		this.m_location = m_location;
		this.m_topic = m_topic;
	}


	public int getM_no() {
		return m_no;
	}


	public void setM_no(int m_no) {
		this.m_no = m_no;
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getM_pwd() {
		return m_pwd;
	}


	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}


	public String getM_name() {
		return m_name;
	}


	public void setM_name(String m_name) {
		this.m_name = m_name;
	}


	public String getM_gender() {
		return m_gender;
	}


	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}


	public String getM_birth() {
		return m_birth;
	}


	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}


	public String getM_phone() {
		return m_phone;
	}


	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}


	public String getM_email() {
		return m_email;
	}


	public void setM_email(String m_email) {
		this.m_email = m_email;
	}


	public String getM_address() {
		return m_address;
	}


	public void setM_address(String m_address) {
		this.m_address = m_address;
	}


	public String getM_cname() {
		return m_cname;
	}


	public void setM_cname(String m_cname) {
		this.m_cname = m_cname;
	}


	public int getM_grade() {
		return m_grade;
	}


	public void setM_grade(int m_grade) {
		this.m_grade = m_grade;
	}


	public int getM_cgrade() {
		return m_cgrade;
	}


	public void setM_cgrade(int m_cgrade) {
		this.m_cgrade = m_cgrade;
	}


	public String getM_location() {
		return m_location;
	}


	public void setM_location(String m_location) {
		this.m_location = m_location;
	}


	public String getM_topic() {
		return m_topic;
	}


	public void setM_topic(String m_topic) {
		this.m_topic = m_topic;
	}


	@Override
	public String toString() {
		return "Member [m_no=" + m_no + ", m_id=" + m_id + ", m_pwd=" + m_pwd + ", m_name=" + m_name + ", m_gender="
				+ m_gender + ", m_birth=" + m_birth + ", m_phone=" + m_phone + ", m_email=" + m_email + ", m_address="
				+ m_address + ", m_cname=" + m_cname + ", m_grade=" + m_grade + ", m_cgrade=" + m_cgrade
				+ ", m_location=" + m_location + ", m_topic=" + m_topic + "]";
	}
	
	
	
	
}
