package com.ourcompany.class247.creator.creator.model.vo;

public class Creator {
	
	private int creNum;
	private int memNum; 
	private String introduction;
	private String career;
	private String education;
	private String certification;
	
	public Creator() {
		
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
		return "Creator [creNum=" + creNum + ", memNum=" + memNum + ", introduction=" + introduction + ", career="
				+ career + ", education=" + education + ", certification=" + certification + "]";
	} 
	
	
	

}
