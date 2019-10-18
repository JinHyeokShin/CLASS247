package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class SingleCourse {
	
	private int courseNum;
	private String courseTitle;
	private String categoryName;
	private String memNickName;
	private String courseKind;
	private String courseLevel;
	private Date courseEnrollDate;
	private Date courseStartDate;
	private Date courseEndDate;
	private int coursePrice;
	private String coaRName;
	private String courseArea;
	
	public SingleCourse() {
		
	}

	public SingleCourse(int courseNum, String courseTitle, String categoryName, String memNickName, String courseKind,
			String courseLevel, Date courseEnrollDate, Date courseStartDate, Date courseEndDate, int coursePrice,
			String coaRName, String courseArea) {
		super();
		this.courseNum = courseNum;
		this.courseTitle = courseTitle;
		this.categoryName = categoryName;
		this.memNickName = memNickName;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
		this.courseEnrollDate = courseEnrollDate;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.coursePrice = coursePrice;
		this.coaRName = coaRName;
		this.courseArea = courseArea;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
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

	public String getCourseLevel() {
		return courseLevel;
	}

	public void setCourseLevel(String courseLevel) {
		this.courseLevel = courseLevel;
	}

	public Date getCourseEnrollDate() {
		return courseEnrollDate;
	}

	public void setCourseEnrollDate(Date courseEnrollDate) {
		this.courseEnrollDate = courseEnrollDate;
	}

	public Date getCourseStartDate() {
		return courseStartDate;
	}

	public void setCourseStartDate(Date courseStartDate) {
		this.courseStartDate = courseStartDate;
	}

	public Date getCourseEndDate() {
		return courseEndDate;
	}

	public void setCourseEndDate(Date courseEndDate) {
		this.courseEndDate = courseEndDate;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
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

	@Override
	public String toString() {
		return "SingleCourse [courseNum=" + courseNum + ", courseTitle=" + courseTitle + ", categoryName="
				+ categoryName + ", memNickName=" + memNickName + ", courseKind=" + courseKind + ", courseLevel="
				+ courseLevel + ", courseEnrollDate=" + courseEnrollDate + ", courseStartDate=" + courseStartDate
				+ ", courseEndDate=" + courseEndDate + ", coursePrice=" + coursePrice + ", coaRName=" + coaRName
				+ ", courseArea=" + courseArea + "]";
	}
	
	
}
