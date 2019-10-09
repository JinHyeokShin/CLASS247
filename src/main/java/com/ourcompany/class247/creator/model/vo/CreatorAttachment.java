package com.ourcompany.class247.creator.model.vo;

public class CreatorAttachment {
	
	private int craNum;
	private int memNum;
	private String craOName;
	private String craRName;
	private int craLevel;
	private String craPath;
	
	public CreatorAttachment() {
		
	}

	public CreatorAttachment(int craNum, int memNum, String craOName, String craRName, int craLevel, String craPath) {
		super();
		this.craNum = craNum;
		this.memNum = memNum;
		this.craOName = craOName;
		this.craRName = craRName;
		this.craLevel = craLevel;
		this.craPath = craPath;
	}

	public int getCraNum() {
		return craNum;
	}

	public void setCraNum(int craNum) {
		this.craNum = craNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getCraOName() {
		return craOName;
	}

	public void setCraOName(String craOName) {
		this.craOName = craOName;
	}

	public String getCraRName() {
		return craRName;
	}

	public void setCraRName(String craRName) {
		this.craRName = craRName;
	}

	public int getCraLevel() {
		return craLevel;
	}

	public void setCraLevel(int craLevel) {
		this.craLevel = craLevel;
	}

	public String getCraPath() {
		return craPath;
	}

	public void setCraPath(String craPath) {
		this.craPath = craPath;
	}

	@Override
	public String toString() {
		return "CreatorAttachment [craNum=" + craNum + ", memNum=" + memNum + ", craOName=" + craOName + ", craRName="
				+ craRName + ", craLevel=" + craLevel + ", craPath=" + craPath + "]";
	}
	
	

}
