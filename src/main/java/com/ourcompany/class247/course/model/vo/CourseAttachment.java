package com.ourcompany.class247.course.model.vo;

public class CourseAttachment {
	
	private int coaNum;
	private int courseNum;
	private String coaOName;
	private String coaRName;
	private int coaLevel;
	private String coaPath;
	
	public CourseAttachment() {
		
	}

	public CourseAttachment(int coaNum, int courseNum, String coaOName, String coaRName, int coaLevel, String coaPath) {
		super();
		this.coaNum = coaNum;
		this.courseNum = courseNum;
		this.coaOName = coaOName;
		this.coaRName = coaRName;
		this.coaLevel = coaLevel;
		this.coaPath = coaPath;
	}

	public int getCoaNum() {
		return coaNum;
	}

	public void setCoaNum(int coaNum) {
		this.coaNum = coaNum;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getCoaOName() {
		return coaOName;
	}

	public void setCoaOName(String coaOName) {
		this.coaOName = coaOName;
	}

	public String getCoaRName() {
		return coaRName;
	}

	public void setCoaRName(String coaRName) {
		this.coaRName = coaRName;
	}

	public int getCoaLevel() {
		return coaLevel;
	}

	public void setCoaLevel(int coaLevel) {
		this.coaLevel = coaLevel;
	}

	public String getCoaPath() {
		return coaPath;
	}

	public void setCoaPath(String coaPath) {
		this.coaPath = coaPath;
	}

	@Override
	public String toString() {
		return "CourseAttachment [coaNum=" + coaNum + ", courseNum=" + courseNum + ", coaOName=" + coaOName
				+ ", coaRName=" + coaRName + ", coaLevel=" + coaLevel + ", coaPath=" + coaPath + "]";
	}

	
}
