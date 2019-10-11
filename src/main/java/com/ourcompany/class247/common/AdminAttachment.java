package com.ourcompany.class247.common;

public class AdminAttachment {
	
	private int aaNum;
	private String aaOName;
	private String aaRName;
	private int aaLevel;
	private String aaPath;
	
	public AdminAttachment() {
		
	}

	public AdminAttachment(int aaNum, String aaOName, String aaRName, int aaLevel, String aaPath) {
		super();
		this.aaNum = aaNum;
		this.aaOName = aaOName;
		this.aaRName = aaRName;
		this.aaLevel = aaLevel;
		this.aaPath = aaPath;
	}

	public int getAaNum() {
		return aaNum;
	}

	public void setAaNum(int aaNum) {
		this.aaNum = aaNum;
	}

	public String getAaOName() {
		return aaOName;
	}

	public void setAaOName(String aaOName) {
		this.aaOName = aaOName;
	}

	public String getAaRName() {
		return aaRName;
	}

	public void setAaRName(String aaRName) {
		this.aaRName = aaRName;
	}

	public int getAaLevel() {
		return aaLevel;
	}

	public void setAaLevel(int aaLevel) {
		this.aaLevel = aaLevel;
	}

	public String getAaPath() {
		return aaPath;
	}

	public void setAaPath(String aaPath) {
		this.aaPath = aaPath;
	}

	@Override
	public String toString() {
		return "AdminAttachment [aaNum=" + aaNum + ", aaOName=" + aaOName + ", aaRName=" + aaRName + ", aaLevel="
				+ aaLevel + ", aaPath=" + aaPath + "]";
	}
	
	
}
