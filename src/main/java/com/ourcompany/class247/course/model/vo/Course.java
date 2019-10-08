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
	private String courseMaterialPrice;		//준비물가격
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
			String courseKind, int coursePrice, int loveCount, String courseMaterial, String courseMaterialPrice,
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

	int getCourseNum() {
		return courseNum;
	}

	void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	String getCategoryName() {
		return categoryName;
	}

	void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	int getMemNum() {
		return memNum;
	}

	void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	String getCourseTitle() {
		return courseTitle;
	}

	void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	String getCourseContent() {
		return courseContent;
	}

	void setCourseContent(String courseContent) {
		this.courseContent = courseContent;
	}

	String getCourseKind() {
		return courseKind;
	}

	void setCourseKind(String courseKind) {
		this.courseKind = courseKind;
	}

	int getCoursePrice() {
		return coursePrice;
	}

	void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	int getLoveCount() {
		return loveCount;
	}

	void setLoveCount(int loveCount) {
		this.loveCount = loveCount;
	}

	String getCourseMaterial() {
		return courseMaterial;
	}

	void setCourseMaterial(String courseMaterial) {
		this.courseMaterial = courseMaterial;
	}

	String getCourseMaterialPrice() {
		return courseMaterialPrice;
	}

	void setCourseMaterialPrice(String courseMaterialPrice) {
		this.courseMaterialPrice = courseMaterialPrice;
	}

	int getCourseCurrentNum() {
		return courseCurrentNum;
	}

	void setCourseCurrentNum(int courseCurrentNum) {
		this.courseCurrentNum = courseCurrentNum;
	}

	int getCourseMaxNum() {
		return courseMaxNum;
	}

	void setCourseMaxNum(int courseMaxNum) {
		this.courseMaxNum = courseMaxNum;
	}

	Date getCourseEnrollDate() {
		return courseEnrollDate;
	}

	void setCourseEnrollDate(Date courseEnrollDate) {
		this.courseEnrollDate = courseEnrollDate;
	}

	Date getCourseApprovedDate() {
		return courseApprovedDate;
	}

	void setCourseApprovedDate(Date courseApprovedDate) {
		this.courseApprovedDate = courseApprovedDate;
	}

	Date getCourseStartDate() {
		return courseStartDate;
	}

	void setCourseStartDate(Date courseStartDate) {
		this.courseStartDate = courseStartDate;
	}

	Date getCourseEndDate() {
		return courseEndDate;
	}

	void setCourseEndDate(Date courseEndDate) {
		this.courseEndDate = courseEndDate;
	}

	String getCourseStatus() {
		return courseStatus;
	}

	void setCourseStatus(String courseStatus) {
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
