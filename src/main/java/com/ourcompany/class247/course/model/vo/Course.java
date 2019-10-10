package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Course {
	
	private int courseNum;					//강의번호
	private String categoryName;			//카테고리이름
	private int memNum;						//회원번호
	private String courseTitle;				//강의제목
	private String courseContent;			//강의내용
	private String courseKind;				//강의타입
	private int coursePrice;				//강의가격
	private int loveCount;					//좋아요수
	private String courseMaterial;			//준비물
	private int courseMaterialPrice;		//준비물가격
	private int courseCurrentNum;			//현재인원수
	private int courseMaxNum;				//max인원수
	private Date courseEnrollDate;			//등록날짜
	private Date courseApprovedDate;		//승인날짜
	private Date courseStartDate;			//강의시작날짜
	private Date courseEndDate;				//강의종료날짜
	private String courseStatus;			//상태
	
	public Course() {
		
	}

	public Course(int courseNum, String categoryName, int memNum, String courseTitle, String courseContent,
			String courseKind, int coursePrice, int loveCount, String courseMaterial, int courseMaterialPrice,
			int courseCurrentNum, int courseMaxNum, Date courseEnrollDate, Date courseApprovedDate,
			Date courseStartDate, Date courseEndDate, String courseStatus) {
		super();
		this.courseNum = courseNum;
		this.categoryName = categoryName;
		this.memNum = memNum;
		this.courseTitle = courseTitle;
		this.courseContent = courseContent;
		this.courseKind = courseKind;
		this.coursePrice = coursePrice;
		this.loveCount = loveCount;
		this.courseMaterial = courseMaterial;
		this.courseMaterialPrice = courseMaterialPrice;
		this.courseCurrentNum = courseCurrentNum;
		this.courseMaxNum = courseMaxNum;
		this.courseEnrollDate = courseEnrollDate;
		this.courseApprovedDate = courseApprovedDate;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.courseStatus = courseStatus;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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

	public String getCourseContent() {
		return courseContent;
	}

	public void setCourseContent(String courseContent) {
		this.courseContent = courseContent;
	}

	public String getCourseKind() {
		return courseKind;
	}

	public void setCourseKind(String courseKind) {
		this.courseKind = courseKind;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	public int getLoveCount() {
		return loveCount;
	}

	public void setLoveCount(int loveCount) {
		this.loveCount = loveCount;
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

	public int getCourseCurrentNum() {
		return courseCurrentNum;
	}

	public void setCourseCurrentNum(int courseCurrentNum) {
		this.courseCurrentNum = courseCurrentNum;
	}

	public int getCourseMaxNum() {
		return courseMaxNum;
	}

	public void setCourseMaxNum(int courseMaxNum) {
		this.courseMaxNum = courseMaxNum;
	}

	public Date getCourseEnrollDate() {
		return courseEnrollDate;
	}

	public void setCourseEnrollDate(Date courseEnrollDate) {
		this.courseEnrollDate = courseEnrollDate;
	}

	public Date getCourseApprovedDate() {
		return courseApprovedDate;
	}

	public void setCourseApprovedDate(Date courseApprovedDate) {
		this.courseApprovedDate = courseApprovedDate;
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

	public String getCourseStatus() {
		return courseStatus;
	}

	public void setCourseStatus(String courseStatus) {
		this.courseStatus = courseStatus;
	}

	@Override
	public String toString() {
		return "Course [courseNum=" + courseNum + ", categoryName=" + categoryName + ", memNum=" + memNum
				+ ", courseTitle=" + courseTitle + ", courseContent=" + courseContent + ", courseKind=" + courseKind
				+ ", coursePrice=" + coursePrice + ", loveCount=" + loveCount + ", courseMaterial=" + courseMaterial
				+ ", courseMaterialPrice=" + courseMaterialPrice + ", courseCurrentNum=" + courseCurrentNum
				+ ", courseMaxNum=" + courseMaxNum + ", courseEnrollDate=" + courseEnrollDate + ", courseApprovedDate="
				+ courseApprovedDate + ", courseStartDate=" + courseStartDate + ", courseEndDate=" + courseEndDate
				+ ", courseStatus=" + courseStatus + "]";
	}

	
}
