package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class SingleCourse {
	
	private String courseTitle;
	private String categoryName;
	private String memNickName;
	private String courseKind;
	private Date courseStartDate;
	private Date couresEndDate;
	private String coaRName;
	private String courseArea;
	private int coursePrice;
	
	public SingleCourse() {
		
	}

	public SingleCourse(String courseTitle, String categoryName, String memNickName, String courseKind,
			Date courseStartDate, Date couresEndDate, String coaRName, String courseArea, int coursePrice) {
		super();
		this.courseTitle = courseTitle;
		this.categoryName = categoryName;
		this.memNickName = memNickName;
		this.courseKind = courseKind;
		this.courseStartDate = courseStartDate;
		this.couresEndDate = couresEndDate;
		this.coaRName = coaRName;
		this.courseArea = courseArea;
		this.coursePrice = coursePrice;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getMemNickName() {
		return memNickName;
	}

	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}

	public String getCourseKind() {
		return courseKind;
	}

	public void setCourseKind(String courseKind) {
		this.courseKind = courseKind;
	}

	public Date getCourseStartDate() {
		return courseStartDate;
	}

	public void setCourseStartDate(Date courseStartDate) {
		this.courseStartDate = courseStartDate;
	}

	public Date getCouresEndDate() {
		return couresEndDate;
	}

	public void setCouresEndDate(Date couresEndDate) {
		this.couresEndDate = couresEndDate;
	}

	public String getCoaRName() {
		return coaRName;
	}

	public void setCoaRName(String coaRName) {
		this.coaRName = coaRName;
	}

	public String getCourseArea() {
		return courseArea;
	}

	public void setCourseArea(String courseArea) {
		this.courseArea = courseArea;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	@Override
	public String toString() {
		return "SingleCourse [courseTitle=" + courseTitle + ", categoryName=" + categoryName + ", memNickName="
				+ memNickName + ", courseKind=" + courseKind + ", courseStartDate=" + courseStartDate
				+ ", couresEndDate=" + couresEndDate + ", coaRName=" + coaRName + ", courseArea=" + courseArea
				+ ", coursePrice=" + coursePrice + "]";
	}
	
}
