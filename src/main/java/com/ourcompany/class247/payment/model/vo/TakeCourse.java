package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class TakeCourse {
	
	private int takeNum;
	private int memNum;
	private int payNum;
	private int courseNum;
	private String courseTitle;
	private String categoryName;
	private String memNickname;
	private String courseKind;
	private String courseLevel;
	private Date courseStartDate;
	private Date courseEndDate;
	private String coaRname;
	private int coursePrice;
	private int payPrice;
	private String courseArea;
	private int courseHourPrice;
	private String courseApproved;
	private String takePrice;
	private String takeCancel;
	private Date takeDate;
	private Date takeCancelDate;
	
	public TakeCourse() {
		
	}

	
	
	
	public TakeCourse(int takeNum, int memNum, int payNum, int courseNum, String courseTitle, String categoryName,
			String memNickname, String courseKind, String courseLevel, Date courseStartDate, Date courseEndDate,
			String coaRname, int coursePrice, int payPrice, String courseArea, int courseHourPrice,
			String courseApproved, String takePrice, String takeCancel, Date takeDate, Date takeCancelDate) {
		super();
		this.takeNum = takeNum;
		this.memNum = memNum;
		this.payNum = payNum;
		this.courseNum = courseNum;
		this.courseTitle = courseTitle;
		this.categoryName = categoryName;
		this.memNickname = memNickname;
		this.courseKind = courseKind;
		this.courseLevel = courseLevel;
		this.courseStartDate = courseStartDate;
		this.courseEndDate = courseEndDate;
		this.coaRname = coaRname;
		this.coursePrice = coursePrice;
		this.payPrice = payPrice;
		this.courseArea = courseArea;
		this.courseHourPrice = courseHourPrice;
		this.courseApproved = courseApproved;
		this.takePrice = takePrice;
		this.takeCancel = takeCancel;
		this.takeDate = takeDate;
		this.takeCancelDate = takeCancelDate;
	}




	public TakeCourse(int takeNum, int payNum, int memNum, String takePrice, String takeCancel, Date takeDate,
			Date takeCancelDate) {
		super();
		this.takeNum = takeNum;
		this.payNum = payNum;
		this.memNum = memNum;
		this.courseNum = courseNum;
		this.takePrice = takePrice;
		this.takeCancel = takeCancel;
		this.takeDate = takeDate;
		this.takeCancelDate = takeCancelDate;
	}

	public int getCourseNum() {
		return courseNum;
	}




	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}




	public String getCourseTitle() {
		return courseTitle;
	}




	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}




	public String getCategoryName() {
		return categoryName;
	}




	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}




	public String getMemNickname() {
		return memNickname;
	}




	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}




	public String getCourseKind() {
		return courseKind;
	}




	public void setCourseKind(String courseKind) {
		this.courseKind = courseKind;
	}




	public String getCourseLevel() {
		return courseLevel;
	}




	public void setCourseLevel(String courseLevel) {
		this.courseLevel = courseLevel;
	}




	public Date getCourseStartDate() {
		return courseStartDate;
	}




	public void setCourseStartDate(Date courseStartDate) {
		this.courseStartDate = courseStartDate;
	}




	public Date getCourseEndDate() {
		return courseEndDate;
	}




	public void setCourseEndDate(Date courseEndDate) {
		this.courseEndDate = courseEndDate;
	}




	public String getCoaRname() {
		return coaRname;
	}




	public void setCoaRname(String coaRname) {
		this.coaRname = coaRname;
	}




	public int getCoursePrice() {
		return coursePrice;
	}




	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}




	public int getPayPrice() {
		return payPrice;
	}




	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}




	public String getCourseArea() {
		return courseArea;
	}




	public void setCourseArea(String courseArea) {
		this.courseArea = courseArea;
	}




	public int getCourseHourPrice() {
		return courseHourPrice;
	}




	public void setCourseHourPrice(int courseHourPrice) {
		this.courseHourPrice = courseHourPrice;
	}




	public String getCourseApproved() {
		return courseApproved;
	}




	public void setCourseApproved(String courseApproved) {
		this.courseApproved = courseApproved;
	}




	public int getTakeNum() {
		return takeNum;
	}

	public void setTakeNum(int takeNum) {
		this.takeNum = takeNum;
	}

	public int getPayNum() {
		return payNum;
	}

	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	
	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getTakePrice() {
		return takePrice;
	}

	public void setTakePrice(String takePrice) {
		this.takePrice = takePrice;
	}

	public String getTakeCancel() {
		return takeCancel;
	}

	public void setTakeCancel(String takeCancel) {
		this.takeCancel = takeCancel;
	}

	public Date getTakeDate() {
		return takeDate;
	}

	public void setTakeDate(Date takeDate) {
		this.takeDate = takeDate;
	}

	public Date getTakeCancelDate() {
		return takeCancelDate;
	}

	public void setTakeCancelDate(Date takeCancelDate) {
		this.takeCancelDate = takeCancelDate;
	}



	/*
	 * @Override public String toString() { return "TakeCourse [takeNum=" + takeNum
	 * + ", payNum=" + payNum + ", memNum=" + memNum + ", takePrice=" + takePrice +
	 * ", takeCancel=" + takeCancel + ", takeDate=" + takeDate + ", takeCancelDate="
	 * + takeCancelDate + "]"; }
	 */


	@Override
	public String toString() {
		return "TakeCourse [takeNum=" + takeNum + ", memNum=" + memNum +  ", payNum=" + payNum +", courseNum="
				+ courseNum + ", courseTitle=" + courseTitle + ", categoryName=" + categoryName + ", memNickname="
				+ memNickname + ", courseKind=" + courseKind + ", courseLevel=" + courseLevel + ", courseStartDate="
				+ courseStartDate + ", courseEndDate=" + courseEndDate + ", coaRname=" + coaRname + ", coursePrice="
				+ coursePrice + ", payPrice=" + payPrice + ", courseArea=" + courseArea + ", courseHourPrice="
				+ courseHourPrice + ", courseApproved=" + courseApproved + ", takePrice=" + takePrice + ", takeCancel="
				+ takeCancel + ", takeDate=" + takeDate + ", takeCancelDate=" + takeCancelDate + "]";
	}


}
