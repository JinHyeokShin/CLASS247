package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Love {
	
	private int memNum;			//회원번호
	private int courseNum;		//수업번호
	private Date wishedDate;	//좋아요날짜
	
	public Love() {
		
	}

	public Love(int memNum, int courseNum, Date wishedDate) {
		super();
		this.memNum = memNum;
		this.courseNum = courseNum;
		this.wishedDate = wishedDate;
	}

	
	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public Date getWishedDate() {
		return wishedDate;
	}

	public void setWishedDate(Date wishedDate) {
		this.wishedDate = wishedDate;
	}

	@Override
	public String toString() {
		return "Love [memNum=" + memNum + ", courseNum=" + courseNum + ", wishedDate=" + wishedDate + "]";
	}
	
	

}
