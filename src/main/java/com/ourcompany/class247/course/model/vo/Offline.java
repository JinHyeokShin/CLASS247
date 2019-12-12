package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Offline extends Course{
	
	private int offlineNum;			//오프라인벊도
	private String courseArea;		//강의지역
	private int courseMinPax;		//최소인원수
	private int courseMaxPax;		//최대인원수
	private int courseHours;		//1회당수업시간
	private int courseHourPrice;	//가격
	private int coursePrice;
	private String coaRName;
	private String courseDay;		//수업일
	private int courseCount;		//수업횟수(사용미정)
	
	public Offline() {
		
	}

	public Offline(int offlineNum, String courseArea, int courseMinPax, int courseMaxPax, int courseHours,
			int courseHourPrice, int coursePrice, String coaRName, String courseDay, int courseCount) {
		super();
		this.offlineNum = offlineNum;
		this.courseArea = courseArea;
		this.courseMinPax = courseMinPax;
		this.courseMaxPax = courseMaxPax;
		this.courseHours = courseHours;
		this.courseHourPrice = courseHourPrice;
		this.coursePrice = coursePrice;
		this.coaRName = coaRName;
		this.courseDay = courseDay;
		this.courseCount = courseCount;
	}

	public int getOfflineNum() {
		return offlineNum;
	}

	public void setOfflineNum(int offlineNum) {
		this.offlineNum = offlineNum;
	}

	public String getCourseArea() {
		return courseArea;
	}

	public void setCourseArea(String courseArea) {
		this.courseArea = courseArea;
	}

	public int getCourseMinPax() {
		return courseMinPax;
	}

	public void setCourseMinPax(int courseMinPax) {
		this.courseMinPax = courseMinPax;
	}

	public int getCourseMaxPax() {
		return courseMaxPax;
	}

	public void setCourseMaxPax(int courseMaxPax) {
		this.courseMaxPax = courseMaxPax;
	}

	public int getCourseHours() {
		return courseHours;
	}

	public void setCourseHours(int courseHours) {
		this.courseHours = courseHours;
	}

	public int getCourseHourPrice() {
		return courseHourPrice;
	}

	public void setCourseHourPrice(int courseHourPrice) {
		this.courseHourPrice = courseHourPrice;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	public String getCoaRName() {
		return coaRName;
	}

	public void setCoaRName(String coaRName) {
		this.coaRName = coaRName;
	}

	public String getCourseDay() {
		return courseDay;
	}

	public void setCourseDay(String courseDay) {
		this.courseDay = courseDay;
	}

	public int getCourseCount() {
		return courseCount;
	}

	public void setCourseCount(int courseCount) {
		this.courseCount = courseCount;
	}

	@Override
	public String toString() {
		return "Offline [offlineNum=" + offlineNum + ", courseArea=" + courseArea + ", courseMinPax=" + courseMinPax
				+ ", courseMaxPax=" + courseMaxPax + ", courseHours=" + courseHours + ", courseHourPrice="
				+ courseHourPrice + ", coursePrice=" + coursePrice + ", coaRName=" + coaRName + ", courseDay="
				+ courseDay + ", courseCount=" + courseCount + "]";
	}

//	public Offline(int offlineNum, String courseArea, int courseMinPax, int courseMaxPax, int courseHours,
//			int courseHourPrice, String courseDay, int courseCount) {
//		super();
//		this.offlineNum = offlineNum;
//		this.courseArea = courseArea;
//		this.courseMinPax = courseMinPax;
//		this.courseMaxPax = courseMaxPax;
//		this.courseHours = courseHours;
//		this.courseHourPrice = courseHourPrice;
//		this.courseDay = courseDay;
//		this.courseCount = courseCount;
//	}
//
//	public Offline(int courseNum, String categoryName, int categoryNum, int creNum, String courseTitle, String courseContent,
//			String courseKind, String courseLevel, int loveCount, int courseCurrentNum, Date courseEnrollDate, Date courseApprovedDate,
//			Date courseStartDate, Date courseEndDate, String courseApproved, String courseStatus, int offlineNum, String courseArea, int courseMinPax, int courseMaxPax, int courseHours,
//			int courseHourPrice, String courseDay, int courseCount) {
//		super(courseNum, categoryName, categoryNum, creNum, courseTitle,
//			 courseContent, courseKind, courseLevel, loveCount, courseCurrentNum, courseEnrollDate,
//			 courseApprovedDate, courseStartDate, courseEndDate, courseApproved,
//			 courseStatus);
//		this.offlineNum = offlineNum;
//		this.courseArea = courseArea;
//		this.courseMinPax = courseMinPax;
//		this.courseMaxPax = courseMaxPax;
//		this.courseHours = courseHours;
//		this.courseHourPrice = courseHourPrice;
//		this.courseDay = courseDay;
//		this.courseCount = courseCount;
//	}
//
//	public Offline(int offlineNum, String courseArea, int courseMinPax, int courseMaxPax, int courseHours,
//			int courseHourPrice, int coursePrice, String courseDay, int courseCount) {
//		super();
//		this.offlineNum = offlineNum;
//		this.courseArea = courseArea;
//		this.courseMinPax = courseMinPax;
//		this.courseMaxPax = courseMaxPax;
//		this.courseHours = courseHours;
//		this.courseHourPrice = courseHourPrice;
//		this.coursePrice = coursePrice;
//		this.courseDay = courseDay;
//		this.courseCount = courseCount;
//	}
//
//	public int getCoursePrice() {
//		return coursePrice;
//	}
//
//	public void setCoursePrice(int coursePrice) {
//		this.coursePrice = coursePrice;
//	}
//
//	public int getOfflineNum() {
//		return offlineNum;
//	}
//
//	public void setOfflineNum(int offlineNum) {
//		this.offlineNum = offlineNum;
//	}
//
//	public String getCourseArea() {
//		return courseArea;
//	}
//
//	public void setCourseArea(String courseArea) {
//		this.courseArea = courseArea;
//	}
//
//	public int getCourseMinPax() {
//		return courseMinPax;
//	}
//
//	public void setCourseMinPax(int courseMinPax) {
//		this.courseMinPax = courseMinPax;
//	}
//
//	public int getCourseMaxPax() {
//		return courseMaxPax;
//	}
//
//	public void setCourseMaxPax(int courseMaxPax) {
//		this.courseMaxPax = courseMaxPax;
//	}
//
//	public int getCourseHours() {
//		return courseHours;
//	}
//
//	public void setCourseHours(int courseHours) {
//		this.courseHours = courseHours;
//	}
//
//	public int getCourseHourPrice() {
//		return courseHourPrice;
//	}
//
//	public void setCourseHourPrice(int courseHourPrice) {
//		this.courseHourPrice = courseHourPrice;
//	}
//
//	public String getCourseDay() {
//		return courseDay;
//	}
//
//	public void setCourseDay(String courseDay) {
//		this.courseDay = courseDay;
//	}
//
//	public int getCourseCount() {
//		return courseCount;
//	}
//
//	public void setCourseCount(int courseCount) {
//		this.courseCount = courseCount;
//	}
//
//	@Override
//	public String toString() {
//		return "Offline [offlineNum=" + offlineNum + ", courseArea=" + courseArea + ", courseMinPax=" + courseMinPax
//				+ ", courseMaxPax=" + courseMaxPax + ", courseHours=" + courseHours + ", courseHourPrice="
//				+ courseHourPrice + ", coursePrice=" + coursePrice + ", courseDay=" + courseDay + ", courseCount="
//				+ courseCount + "]";
//	}


	
	

}
