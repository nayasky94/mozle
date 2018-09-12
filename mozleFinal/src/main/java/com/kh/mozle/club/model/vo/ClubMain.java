package com.kh.mozle.club.model.vo;

import org.springframework.stereotype.Component;

/**
 * @author user2
 *
 */
@Component
public class ClubMain {

	private int c_no;
	private String c_name;
	private String c_category;
	private String c_leader_id;
	private String c_member_id;
	private String c_picture;
	private String c_content;
	private String c_summary;
	private String c_thumbnail;
	private String c_location;
	private String c_member_id_ready;

	public ClubMain() {
		super();
	}

	







	public ClubMain(int c_no, String c_name, String c_category, String c_leader_id, String c_member_id,
			String c_picture, String c_content, String c_summary, String c_thumbnail, String c_location,
			String c_member_id_ready) {
		super();
		this.c_no = c_no;
		this.c_name = c_name;
		this.c_category = c_category;
		this.c_leader_id = c_leader_id;
		this.c_member_id = c_member_id;
		this.c_picture = c_picture;
		this.c_content = c_content;
		this.c_summary = c_summary;
		this.c_thumbnail = c_thumbnail;
		this.c_location = c_location;
		this.c_member_id_ready = c_member_id_ready;
	}









	public String getC_member_id_ready() {
		return c_member_id_ready;
	}






	public void setC_member_id_ready(String c_member_id_ready) {
		this.c_member_id_ready = c_member_id_ready;
	}






	public String getC_location() {
		return c_location;
	}



	public void setC_location(String c_location) {
		this.c_location = c_location;
	}



	public String getC_summary() {
		return c_summary;
	}
	public void setC_summary(String c_summary) {
		this.c_summary = c_summary;
	}
	public String getC_thumbnail() {
		return c_thumbnail;
	}
	public void setC_thumbnail(String c_thumbnail) {
		this.c_thumbnail = c_thumbnail;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_category() {
		return c_category;
	}
	public void setC_category(String c_category) {
		this.c_category = c_category;
	}
	public String getC_leader_id() {
		return c_leader_id;
	}
	public void setC_leader_id(String c_leader_id) {
		this.c_leader_id = c_leader_id;
	}
	public String getC_member_id() {
		return c_member_id;
	}
	public void setC_member_id(String c_member_id) {
		this.c_member_id = c_member_id;
	}
	public String getC_picture() {
		return c_picture;
	}
	public void setC_picture(String c_picture) {
		this.c_picture = c_picture;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}









	@Override
	public String toString() {
		return "ClubMain [c_no=" + c_no + ", c_name=" + c_name + ", c_category=" + c_category + ", c_leader_id="
				+ c_leader_id + ", c_member_id=" + c_member_id + ", c_picture=" + c_picture + ", c_content=" + c_content
				+ ", c_summary=" + c_summary + ", c_thumbnail=" + c_thumbnail + ", c_location=" + c_location
				+ ", c_member_id_ready=" + c_member_id_ready + "]";
	}







	
	
	
	
}
