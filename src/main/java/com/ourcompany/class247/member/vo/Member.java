package com.ourcompany.class247.member.vo;

import java.sql.Date;

public class Member {
	
	private int memNumk;			//회원번호
	private String memId;			//아이디
	private String memPwd;			//비밀번호 
	private String memNickName;		//닉네임
	private String memName;			//이름
	private String memGender;		//성별
	private String memPhone;		//핸드폰번호
	private String memType;			//사용자구분자
	private Date memEnrollDate;		//가입일자	
	private Date memOutDate;		//탈퇴일자
	
	public Member() {
		
	}

	public Member(int memNumk, String memId, String memPwd, String memNickName, String memName, String memGender,
			String memPhone, String memType, Date memEnrollDate, Date memOutDate) {
		super();
		this.memNumk = memNumk;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNickName = memNickName;
		this.memName = memName;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.memType = memType;
		this.memEnrollDate = memEnrollDate;
		this.memOutDate = memOutDate;

	}

	public int getMemNumk() {
		return memNumk;
	}

	public void setMemNumk(int memNumk) {
		this.memNumk = memNumk;
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


	@Override
	public String toString() {
		return "Member [memNumk=" + memNumk + ", memId=" + memId + ", memPwd=" + memPwd + ", memNickName=" + memNickName
				+ ", memName=" + memName + ", memGender=" + memGender + ", memPhone=" + memPhone + ", memType="
				+ memType + ", memEnrollDate=" + memEnrollDate + ", memOutDate=" + memOutDate + ", memStatus="
				+"]";
	}
	
	

}
