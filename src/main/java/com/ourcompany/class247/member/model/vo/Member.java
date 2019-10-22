package com.ourcompany.class247.member.model.vo;

import java.sql.Date;


public class Member {
	
	private int memNum;				//회원번호
	private String memId;			//아이디
	private String memPwd;			//비밀번호 
	private String memNickName;		//닉네임
	private String memName;			//이름
	private String memGender;		//성별
	private String memPhone;		//핸드폰번호
	private String memAddress;		// 주소
	private String memProfileName;	//프로필파일이름
	private String memProfilePath;	//프로필파일경로
	private String memType;			//사용자구분자 관리자:a 사용자:u
	private Date memEnrollDate;		//가입일자	
	private Date memOutDate;		//탈퇴일자
	private String memStatus;		//상태값

	//크리에이터센터에서 학생 수강목록 조회 용 
	private Date payDate; 			//결제일
	private int payPrice;			//수강결제가격
	private Date takeDate;			//수강일
	private int courseNum;			//클래스번호
	private String courseTitle; 	//클래스제목
	private String courseKind; 		//온라인,오프라인
	private String courseLevel;		//수강생 레벨
 
	public Member() {
		
	}

	public Member(int memNum, String memId, String memPwd, String memNickName, String memName, String memGender,
			String memPhone, String memAddress, String memProfileName, String memProfilePath, String memType,
			Date memEnrollDate, Date memOutDate, String memStatus) {
		super();
		this.memNum = memNum;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNickName = memNickName;
		this.memName = memName;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.memAddress = memAddress;
		this.memProfileName = memProfileName;
		this.memProfilePath = memProfilePath;
		this.memType = memType;
		this.memEnrollDate = memEnrollDate;
		this.memOutDate = memOutDate;
		this.memStatus = memStatus;
	}


	public Member(int memNum, String memId, String memPwd, String memNickName, String memName, String memGender,
			String memPhone, String memAddress, String memProfileName, String memProfilePath, String memType,
			Date memEnrollDate, Date memOutDate, String memStatus, Date payDate, int payPrice, Date takeDate,
			int courseNum, String courseTitle, String courseKind, String courseLevel) {
		super();
		this.memNum = memNum;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNickName = memNickName;
		this.memName = memName;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.memAddress = memAddress;
		this.memProfileName = memProfileName;
		this.memProfilePath = memProfilePath;
		this.memType = memType;
		this.memEnrollDate = memEnrollDate;
		this.memOutDate = memOutDate;
		this.memStatus = memStatus;
		this.payDate = payDate;
		this.payPrice = payPrice;
		this.takeDate = takeDate;
		this.courseNum = courseNum;
		this.courseTitle = courseTitle;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
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

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public Date getTakeDate() {
		return takeDate;
	}

	public void setTakeDate(Date takeDate) {
		this.takeDate = takeDate;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemNickName() {
		return memNickName;
	}

	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public String getMemProfileName() {
		return memProfileName;
	}

	public void setMemProfileName(String memProfileName) {
		this.memProfileName = memProfileName;
	}



	public String getMemProfilePath() {
		return memProfilePath;
	}



	public void setMemProfilePath(String memProfilePath) {
		this.memProfilePath = memProfilePath;
	}



	public String getMemType() {
		return memType;
	}

	public void setMemType(String memType) {
		this.memType = memType;
	}

	public Date getMemEnrollDate() {
		return memEnrollDate;
	}

	public void setMemEnrollDate(Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}

	public Date getMemOutDate() {
		return memOutDate;
	}

	public void setMemOutDate(Date memOutDate) {
		this.memOutDate = memOutDate;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	@Override
	public String toString() {
		return "Member [memNum=" + memNum + ", memId=" + memId + ", memPwd=" + memPwd + ", memNickName=" + memNickName
				+ ", memName=" + memName + ", memGender=" + memGender + ", memPhone=" + memPhone + ", memAddress="
				+ memAddress + ", memType=" + memType + ", memEnrollDate=" + memEnrollDate + ", memOutDate="
				+ memOutDate + ", memStatus=" + memStatus + "]";
	}
	
	
	
}