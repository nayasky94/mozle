package com.kh.mozle.admin.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Admin {

	private int countVisitor;
	
	public Admin(){}

	public int getCountVisitor() {
		return countVisitor;
	}

	public void setCountVisitor(int countVisitor) {
		this.countVisitor = countVisitor;
	}

	public Admin(int countVisitor) {
		super();
		this.countVisitor = countVisitor;
	}
	
	
	
}
