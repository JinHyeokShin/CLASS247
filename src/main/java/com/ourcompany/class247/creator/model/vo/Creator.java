package com.ourcompany.class247.creator.model.vo;

import java.sql.Date;

public class Creator {
	
	private int creNum;
	private String creName;
	private int memNum; 
	private String memNickName;
	private String introduction;
	private String career;			//경력
	private String education;		//학력
	private String certification;	//자격증
	private Date enrollDate;
	private Date approvedDate;
	private Date endDate;
	private String creStatus;		
	
	public Creator() {
		
	}
	

	public Creator(int creNum, String creName, int memNum, String introduction, String career, String education,
			String certification, String creStatus) {
		super();
		this.creNum = creNum;
		this.creName = creName;
		this.memNum = memNum;
		this.introduction = introduction;
		this.career = career;
		this.education = education;
		this.certification = certification;
		this.creStatus = creStatus;
	}
	


	public Creator(int creNum, int memNum, String memNickName, String introduction, String career, String education,
			String certification, Date enrollDate, Date approvedDate, Date endDate, String creStatus) {
		super();
		this.creNum = creNum;
		this.memNum = memNum;
		this.memNickName = memNickName;
		this.introduction = introduction;
		this.career = career;
		this.education = education;
		this.certification = certification;
		this.enrollDate = enrollDate;
		this.approvedDate = approvedDate;
		this.endDate = endDate;
		this.creStatus = creStatus;
	}


	public String getCreName() {
		return creName;
	}


	public void setCreName(String creName) {
		this.creName = creName;
	}


	public String getCreStatus() {
		return creStatus;
	}



	public void setCreStatus(String creStatus) {
		this.creStatus = creStatus;
	}



	public int getCreNum() {
		return creNum;
	}

	public void setCreNum(int creNum) {
		this.creNum = creNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	
	

	public String getMemNickName() {
		return memNickName;
	}



	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}



	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}
	


	public Date getEnrollDate() {
		return enrollDate;
	}



	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}



	public Date getApprovedDate() {
		return approvedDate;
	}



	public void setApprovedDate(Date approvedDate) {
		this.approvedDate = approvedDate;
	}



	public Date getEndDate() {
		return endDate;
	}



	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}



	public String getCertification() {
		return certification;
	}

	public void setCertification(String certification) {
		this.certification = certification;
	}


	@Override
	public String toString() {
		return "Creator [creNum=" + creNum + ", memNum=" + memNum + ", memNickName=" + memNickName + ", introduction="
				+ introduction + ", career=" + career + ", education=" + education + ", certification=" + certification
				+ ", enrollDate=" + enrollDate + ", approvedDate=" + approvedDate + ", endDate=" + endDate
				+ ", creStatus=" + creStatus + "]";
	}



}
