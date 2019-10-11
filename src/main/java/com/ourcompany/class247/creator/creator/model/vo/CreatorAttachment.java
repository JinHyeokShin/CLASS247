package com.ourcompany.class247.creator.creator.model.vo;

public class CreatorAttachment {
	
	private int craNum;
	private int creNum;
	private String craOname;
	private String craRname;
	private int craLevel;
	private String craPath;
	
	public CreatorAttachment() {
		
	}
	
	public CreatorAttachment(int craNum, int creNum, String craOname, String craRname, int craLevel, String craPath) {
		super();
		this.craNum = craNum;
		this.creNum = creNum;
		this.craOname = craOname;
		this.craRname = craRname;
		this.craLevel = craLevel;
		this.craPath = craPath;
	}

	public int getCraNum() {
		return craNum;
	}

	public void setCraNum(int craNum) {
		this.craNum = craNum;
	}

	public int getCreNum() {
		return creNum;
	}

	public void setCreNum(int creNum) {
		this.creNum = creNum;
	}

	public String getCraOname() {
		return craOname;
	}

	public void setCraOname(String craOname) {
		this.craOname = craOname;
	}

	public String getCraRname() {
		return craRname;
	}

	public void setCraRname(String craRname) {
		this.craRname = craRname;
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
		return "CreatorAttachment [craNum=" + craNum + ", creNum=" + creNum + ", craOname=" + craOname + ", craRname="
				+ craRname + ", craLevel=" + craLevel + ", craPath=" + craPath + "]";
	}
	
	
	

}
