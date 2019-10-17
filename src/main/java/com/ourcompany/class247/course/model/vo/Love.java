package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Love {
	
	private int memNum;
	private String courseTitle;
	private String creatorName;
	private String courseKind;
	private String coaRName;
	private Date wishedDate;
	private int coursePrice;
	
	public Love() {
		
	}

	public Love(int memNum, String courseTitle, String creatorName, String courseKind, String coaRName, Date wishedDate,
			int coursePrice) {
		super();
		this.memNum = memNum;
		this.courseTitle = courseTitle;
		this.creatorName = creatorName;
		this.courseKind = courseKind;
		this.coaRName = coaRName;
		this.wishedDate = wishedDate;
		this.coursePrice = coursePrice;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCreatorName() {
		return creatorName;
	}

	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}

	public String getCourseKind() {
		return courseKind;
	}

	public void setCourseKind(String courseKind) {
		this.courseKind = courseKind;
	}

	public String getCoaRName() {
		return coaRName;
	}

	public void setCoaRName(String coaRName) {
		this.coaRName = coaRName;
	}

	public Date getWishedDate() {
		return wishedDate;
	}

	public void setWishedDate(Date wishedDate) {
		this.wishedDate = wishedDate;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	@Override
	public String toString() {
		return "Love [memNum=" + memNum + ", courseTitle=" + courseTitle + ", creatorName=" + creatorName
				+ ", courseKind=" + courseKind + ", coaRName=" + coaRName + ", wishedDate=" + wishedDate
				+ ", coursePrice=" + coursePrice + "]";
	}

	
	
}
