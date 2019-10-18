package com.ourcompany.class247.creator.model.vo;

public class Creator {
	
	private int creNum;
	private String creName;
	private int memNum; 
	private String introduction;
	private String career;
	private String education;
	private String certification;
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

	public String getCertification() {
		return certification;
	}

	public void setCertification(String certification) {
		this.certification = certification;
	}


	@Override
	public String toString() {
		return "Creator [creNum=" + creNum + ", creName=" + creName + ", memNum=" + memNum + ", introduction="
				+ introduction + ", career=" + career + ", education=" + education + ", certification=" + certification
				+ ", creStatus=" + creStatus + "]";
	}



}
