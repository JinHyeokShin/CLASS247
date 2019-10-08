package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Love {
	
	private int memNum;
	private int courseNum;
	private Date wishedDate;
	
	public Love() {
		
	}

	public Love(int memNum, int courseNum, Date wishedDate) {
		super();
		this.memNum = memNum;
		this.courseNum = courseNum;
		this.wishedDate = wishedDate;
	}

	int getMemNum() {
		return memNum;
	}

	void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	int getCourseNum() {
		return courseNum;
	}

	void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	Date getWishedDate() {
		return wishedDate;
	}

	void setWishedDate(Date wishedDate) {
		this.wishedDate = wishedDate;
	}

	@Override
	public String toString() {
		return "Love [memNum=" + memNum + ", courseNum=" + courseNum + ", wishedDate=" + wishedDate + "]";
	}
	
	

}
