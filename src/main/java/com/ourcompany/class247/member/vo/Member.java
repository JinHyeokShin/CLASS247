package com.ourcompany.class247.member.vo;

import java.sql.Date;

public class Member {
	
	private int memNum;			//회원번호
	private String memId;			//아이디
	private String memPwd;			//비밀번호 
	private String memNickName;		//닉네임
	private String memName;			//이름
	private String memGender;		//성별
	private String memPhone;		//핸드폰번호
	private String memType;			//사용자구분자
	private Date memEnrollDate;		//가입일자	
	private Date memOutDate;		//탈퇴일자
	private String memStatus;		//상태값
	
	public Member() {
		
	}

	public Member(int memNum, String memId, String memPwd, String memNickName, String memName, String memGender,
			String memPhone, String memType, Date memEnrollDate, Date memOutDate, String memStatus) {
		super();
		this.memNum = memNum;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNickName = memNickName;
		this.memName = memName;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.memType = memType;
		this.memEnrollDate = memEnrollDate;
		this.memOutDate = memOutDate;
		this.memStatus = memStatus;
	}

	int getMemNum() {
		return memNum;
	}

	void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	String getMemId() {
		return memId;
	}

	void setMemId(String memId) {
		this.memId = memId;
	}

	String getMemPwd() {
		return memPwd;
	}

	void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	String getMemNickName() {
		return memNickName;
	}

	void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}

	String getMemName() {
		return memName;
	}

	void setMemName(String memName) {
		this.memName = memName;
	}

	String getMemGender() {
		return memGender;
	}

	void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	String getMemPhone() {
		return memPhone;
	}

	void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	String getMemType() {
		return memType;
	}

	void setMemType(String memType) {
		this.memType = memType;
	}

	Date getMemEnrollDate() {
		return memEnrollDate;
	}

	void setMemEnrollDate(Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}

	Date getMemOutDate() {
		return memOutDate;
	}

	void setMemOutDate(Date memOutDate) {
		this.memOutDate = memOutDate;
	}

	String getMemStatus() {
		return memStatus;
	}

	void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	@Override
	public String toString() {
		return "Member [memNum=" + memNum + ", memId=" + memId + ", memPwd=" + memPwd + ", memNickName=" + memNickName
				+ ", memName=" + memName + ", memGender=" + memGender + ", memPhone=" + memPhone + ", memType="
				+ memType + ", memEnrollDate=" + memEnrollDate + ", memOutDate=" + memOutDate + ", memStatus="
				+ memStatus + "]";
	}

	
	
	

}
