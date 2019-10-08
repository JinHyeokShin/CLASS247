package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class TakeCourse {
	
	private int takeNum;
	private int payNum;
	private int memNum;
	private String takePrice;
	private String takeCancle;
	private Date takeDate;
	private Date takeCancelDate;
	
	public TakeCourse() {
		
	}

	public TakeCourse(int takeNum, int payNum, int memNum, String takePrice, String takeCancle, Date takeDate,
			Date takeCancelDate) {
		super();
		this.takeNum = takeNum;
		this.payNum = payNum;
		this.memNum = memNum;
		this.takePrice = takePrice;
		this.takeCancle = takeCancle;
		this.takeDate = takeDate;
		this.takeCancelDate = takeCancelDate;
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

	public String getTakePrice() {
		return takePrice;
	}

	public void setTakePrice(String takePrice) {
		this.takePrice = takePrice;
	}

	public String getTakeCancle() {
		return takeCancle;
	}

	public void setTakeCancle(String takeCancle) {
		this.takeCancle = takeCancle;
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

	@Override
	public String toString() {
		return "TakeCourse [takeNum=" + takeNum + ", payNum=" + payNum + ", memNum=" + memNum + ", takePrice="
				+ takePrice + ", takeCancle=" + takeCancle + ", takeDate=" + takeDate + ", takeCancelDate="
				+ takeCancelDate + "]";
	}

	
	
	

}
