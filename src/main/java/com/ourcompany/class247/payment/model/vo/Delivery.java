package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class Delivery {
	
	private int deliveryNum;
	private int payNum;
	private String deliveryAddress;
	private String deliveryStatus;
	private Date payDate;
	private int payPrice;
	private String memName;
	private String courseMaterial;
	private String courseTitle;
	private int memNum;	
	private String payMethod;
	private int coursePrice;
	
	public Delivery() {
		
	}

	public Delivery(int deliveryNum, int payNum, String deliveryAddress, String deliveryStatus, Date payDate,
			int payPrice, String memName, String courseMaterial, String courseTitle, int memNum, String payMethod,
			int coursePrice) {
		super();
		this.deliveryNum = deliveryNum;
		this.payNum = payNum;
		this.deliveryAddress = deliveryAddress;
		this.deliveryStatus = deliveryStatus;
		this.payDate = payDate;
		this.payPrice = payPrice;
		this.memName = memName;
		this.courseMaterial = courseMaterial;
		this.courseTitle = courseTitle;
		this.memNum = memNum;
		this.payMethod = payMethod;
		this.coursePrice = coursePrice;
	}

	public int getDeliveryNum() {
		return deliveryNum;
	}

	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}

	public int getPayNum() {
		return payNum;
	}

	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getCourseMaterial() {
		return courseMaterial;
	}

	public void setCourseMaterial(String courseMaterial) {
		this.courseMaterial = courseMaterial;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public int getCoursePrice() {
		return coursePrice;
	}

	public void setCoursePrice(int coursePrice) {
		this.coursePrice = coursePrice;
	}

	@Override
	public String toString() {
		return "Delivery [deliveryNum=" + deliveryNum + ", payNum=" + payNum + ", deliveryAddress=" + deliveryAddress
				+ ", deliveryStatus=" + deliveryStatus + ", payDate=" + payDate + ", payPrice=" + payPrice
				+ ", memName=" + memName + ", courseMaterial=" + courseMaterial + ", courseTitle=" + courseTitle
				+ ", memNum=" + memNum + ", payMethod=" + payMethod + ", coursePrice=" + coursePrice + "]";
	}

	

	
	

}
