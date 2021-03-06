package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Course {
	
	private int courseNum;					//강의번호
	private String categoryName;			//카테고리이름
	private int categoryNum;				//카테고리번호
	private int creNum;						//크리에이터넘버
	private String memNickName;				//닉네임
	private String courseTitle;				//강의제목
	private String courseContent;			//강의내용
	private String courseKind;				//강의타입
	private String courseLevel;				//수강자 레벨
	private int loveCount;					//좋아요수
	private int courseCurrentNum;			//현재인원수
	private Date courseEnrollDate;			//등록날짜
	private Date courseApprovedDate;		//승인날짜
	private Date courseStartDate;			//강의시작날짜
	private Date courseEndDate;				//강의종료날짜
	private String courseApproved;			//승인여부(N-대기, Y-승인, R(refuse)-거절) 
	private String courseStatus;			//상태(수업만료 여부) 
	
	public Course() {
		
	}

	// select용
	public Course(int courseNum, String categoryName, int creNum, String memNickName, String courseTitle, String courseContent,
			String courseKind, int loveCount, int courseCurrentNum, Date courseEnrollDate, Date courseApprovedDate,
			Date courseStartDate, Date courseEndDate, String courseApproved, String courseStatus, String courseLevel) {
		super();
		this.courseNum = courseNum;
		this.categoryName = categoryName;
		this.creNum = creNum;
		this.memNickName = memNickName;
		this.courseTitle = courseTitle;
		this.courseContent = courseContent;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
		this.loveCount = loveCount;
		this.courseCurrentNum = courseCurrentNum;
		this.courseEnrollDate = courseEnrollDate;
		this.courseApprovedDate = courseApprovedDate;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.courseApproved = courseApproved;
		this.courseStatus = courseStatus;
	}
	
	// insert용
	public Course(int courseNum, int categoryNum, int craNum, String courseTitle, String courseContent,
			String courseKind, String courseLevel, int loveCount, int courseCurrentNum, Date courseEnrollDate, Date courseApprovedDate,
			Date courseStartDate, Date courseEndDate, String courseApproved, String courseStatus) {
		super();
		this.courseNum = courseNum;
		this.categoryNum = categoryNum;
		this.creNum = craNum;
		this.courseTitle = courseTitle;
		this.courseContent = courseContent;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
		this.loveCount = loveCount;
		this.courseCurrentNum = courseCurrentNum;
		this.courseEnrollDate = courseEnrollDate;
		this.courseApprovedDate = courseApprovedDate;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.courseApproved = courseApproved;
		this.courseStatus = courseStatus;
	}
	
	
	// nickName 없는것
	public Course(int courseNum, String categoryName, int categoryNum, int creNum, String courseTitle,
			String courseContent, String courseKind, String courseLevel, int loveCount, int courseCurrentNum,
			Date courseEnrollDate, Date courseApprovedDate, Date courseStartDate, Date courseEndDate,
			String courseApproved, String courseStatus) {
		super();
		this.courseNum = courseNum;
		this.categoryName = categoryName;
		this.categoryNum = categoryNum;
		this.creNum = creNum;
		this.courseTitle = courseTitle;
		this.courseContent = courseContent;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
		this.loveCount = loveCount;
		this.courseCurrentNum = courseCurrentNum;
		this.courseEnrollDate = courseEnrollDate;
		this.courseApprovedDate = courseApprovedDate;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.courseApproved = courseApproved;
		this.courseStatus = courseStatus;
	}

	// NickName 있는것
	public Course(int courseNum, String categoryName, int categoryNum, int creNum, String memNickName,
			String courseTitle, String courseContent, String courseKind, String courseLevel, int loveCount,
			int courseCurrentNum, Date courseEnrollDate, Date courseApprovedDate, Date courseStartDate,
			Date courseEndDate, String courseApproved, String courseStatus) {
		super();
		this.courseNum = courseNum;
		this.categoryName = categoryName;
		this.categoryNum = categoryNum;
		this.creNum = creNum;
		this.memNickName = memNickName;
		this.courseTitle = courseTitle;
		this.courseContent = courseContent;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
		this.loveCount = loveCount;
		this.courseCurrentNum = courseCurrentNum;
		this.courseEnrollDate = courseEnrollDate;
		this.courseApprovedDate = courseApprovedDate;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.courseApproved = courseApproved;
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
	
	public int getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}

	public int getCreNum() {
		return creNum;
	}

	public void setCreNum(int creNum) {
		this.creNum = creNum;
	}
	
	public String getMemNickName() {
		return memNickName;
	}

	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
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

	public String getCourseLevel() {
		return courseLevel;
	}

	public void setCourseLevel(String courseLevel) {
		this.courseLevel = courseLevel;
	}

	public int getLoveCount() {
		return loveCount;
	}

	public void setLoveCount(int loveCount) {
		this.loveCount = loveCount;
	}

	public int getCourseCurrentNum() {
		return courseCurrentNum;
	}

	public void setCourseCurrentNum(int courseCurrentNum) {
		this.courseCurrentNum = courseCurrentNum;
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

	public String getCourseApproved() {
		return courseApproved;
	}

	public void setCourseApproved(String courseApproved) {
		this.courseApproved = courseApproved;
	}

	public String getCourseStatus() {
		return courseStatus;
	}

	public void setCourseStatus(String courseStatus) {
		this.courseStatus = courseStatus;
	}

	@Override
	public String toString() {
		return "Course [courseNum=" + courseNum + ", categoryName=" + categoryName + ", categoryNum=" + categoryNum
				+ ", creNum=" + creNum + ", courseTitle=" + courseTitle + ", courseContent=" + courseContent
				+ ", courseKind=" + courseKind + ", courseLevel=" + courseLevel + ", loveCount=" + loveCount
				+ ", courseCurrentNum=" + courseCurrentNum + ", courseEnrollDate=" + courseEnrollDate
				+ ", courseApprovedDate=" + courseApprovedDate + ", courseStartDate=" + courseStartDate
				+ ", courseEndDate=" + courseEndDate + ", courseApproved=" + courseApproved + ", courseStatus="
				+ courseStatus + "]";
	}


	
	
	
}
