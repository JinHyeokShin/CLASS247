package com.ourcompany.class247.course.model.vo;

public class CourseAttachment {
	
	private int caNum;
	private int courseNum;
	private String caOName;
	private String caRName;
	private int caLevel;
	private String caPath;
	
	public CourseAttachment() {
		
	}

	public CourseAttachment(int caNum, int courseNum, String caOName, String caRName, int caLevel, String caPath) {
		super();
		this.caNum = caNum;
		this.courseNum = courseNum;
		this.caOName = caOName;
		this.caRName = caRName;
		this.caLevel = caLevel;
		this.caPath = caPath;
	}

	public int getCaNum() {
		return caNum;
	}

	public void setCaNum(int caNum) {
		this.caNum = caNum;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getCaOName() {
		return caOName;
	}

	public void setCaOName(String caOName) {
		this.caOName = caOName;
	}

	public String getCaRName() {
		return caRName;
	}

	public void setCaRName(String caRName) {
		this.caRName = caRName;
	}

	public int getCaLevel() {
		return caLevel;
	}

	public void setCaLevel(int caLevel) {
		this.caLevel = caLevel;
	}

	public String getCaPath() {
		return caPath;
	}

	public void setCaPath(String caPath) {
		this.caPath = caPath;
	}

	@Override
	public String toString() {
		return "CourseAttachment [caNum=" + caNum + ", courseNum=" + courseNum + ", caOName=" + caOName + ", caRName="
				+ caRName + ", caLevel=" + caLevel + ", caPath=" + caPath + "]";
	}
	
	
}
