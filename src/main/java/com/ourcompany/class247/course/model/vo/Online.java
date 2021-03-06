package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Online extends Course{
	
	private int onlineNum;				//온라인수업 번호
	private int coursePrice;			//온라인 수업 가격
	private String courseMaterial;		//준비물
	private int courseMaterialPrice;	//준비물가격
	private String courseVideoUrl;			//소개영상링크
	private String coaRName;
	
	public Online() {
		
	}

	public Online(int onlineNum, int coursePrice, String courseMaterial, int courseMaterialPrice,
			String courseVideoUrl) {
		super();
		this.onlineNum = onlineNum;
		this.coursePrice = coursePrice;
		this.courseMaterial = courseMaterial;
		this.courseMaterialPrice = courseMaterialPrice;
		this.courseVideoUrl = courseVideoUrl;
	}
	
	
	
	public Online(int courseNum, String categoryName, int categoryNum, int creNum, String courseTitle, String courseContent,
			String courseKind, String courseLevel, int loveCount, int courseCurrentNum, Date courseEnrollDate, Date courseApprovedDate,
			Date courseStartDate, Date courseEndDate, String courseApproved, String courseStatus, 
			int onlineNum, int coursePrice, String courseMaterial, int courseMaterialPrice,
			String courseVideoUrl
			) {
		super(courseNum, categoryName, categoryNum, creNum, courseTitle,
			 courseContent, courseKind, courseLevel, loveCount, courseCurrentNum, courseEnrollDate,
			 courseApprovedDate, courseStartDate, courseEndDate, courseApproved,
			 courseStatus);
		this.onlineNum = onlineNum;
		this.coursePrice = coursePrice;
		this.courseMaterial = courseMaterial;
		this.courseMaterialPrice = courseMaterialPrice;
		this.courseVideoUrl = courseVideoUrl;
	}
	
	
	

	public Online(int onlineNum, int coursePrice, String courseMaterial, int courseMaterialPrice, String courseVideoUrl,
			String coaRName) {
		super();
		this.onlineNum = onlineNum;
		this.coursePrice = coursePrice;
		this.courseMaterial = courseMaterial;
		this.courseMaterialPrice = courseMaterialPrice;
		this.courseVideoUrl = courseVideoUrl;
		this.coaRName = coaRName;
	}

	public String getCoaRName() {
		return coaRName;
	}

	public void setCoaRName(String coaRName) {
		this.coaRName = coaRName;
	}

	public int getOnlineNum() {
		return onlineNum;
	}

	public void setOnlineNum(int onlineNum) {
		this.onlineNum = onlineNum;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	public String getCourseMaterial() {
		return courseMaterial;
	}

	public void setCourseMaterial(String courseMaterial) {
		this.courseMaterial = courseMaterial;
	}

	public int getCourseMaterialPrice() {
		return courseMaterialPrice;
	}

	public void setCourseMaterialPrice(int courseMaterialPrice) {
		this.courseMaterialPrice = courseMaterialPrice;
	}

	public String getCourseVideoUrl() {
		return courseVideoUrl;
	}

	public void setCourseVideoUrl(String courseVideoUrl) {
		this.courseVideoUrl = courseVideoUrl;
	}

	@Override
	public String toString() {
		return "Online [ courseNum=" + getCourseNum() + ",  categoryName=" + getCategoryName() + ", categoryNum=" + getCategoryNum() + ", creNum=" + getCreNum()
				 + ", courseTitle" + getCourseTitle() + ", courseContent=" + getCourseContent() + ", courseKind=" + getCourseKind() +", courseLevel=" + getCourseLevel() 
				+ ", loveCount=" + getLoveCount() + ", courseCurrentNum=" + getCourseCurrentNum() + ", courseEnrollDate=" + getCourseEnrollDate() 
				+ ", courseApprovedDate= " + getCourseApprovedDate() + ", courseStartDate=" + getCourseStartDate() + ", courseEndDate=" + getCourseEndDate() + 
				 ", courseApproved=" + getCourseApproved() + ", courseStatus=" + getCourseStatus()  + "onlineNum=" + onlineNum + ", coursePrice=" + coursePrice + ", courseMaterial=" + courseMaterial
				+ ", courseMaterialPrice=" + courseMaterialPrice + ", courseVideoUrl=" + courseVideoUrl + "coaRName" + coaRName +" ]";
	}
	
	
}
