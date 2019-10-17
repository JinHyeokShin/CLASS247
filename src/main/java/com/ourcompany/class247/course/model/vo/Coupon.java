package com.ourcompany.class247.course.model.vo;

import java.sql.Date;

public class Coupon {
	
	private int couponNum;			//쿠폰번호
	private int memNum;				//회원번호
	private String couponName;		//쿠폰이름
	private int couponDiscount;		//쿠폰할인가격
	private Date couponEnrollDate;	//쿠폰생성날짜
	private Date couponUsingDate;	//쿠폰사용날짜
	private Date couponEndDate;		//쿠폰종료날짜
	
	
	public Coupon() {
		
	}


	public Coupon(int couponNum, int memNum, String couponName, int couponDiscount, Date couponEnrollDate,
			Date couponUsingDate, Date couponEndDate) {
		super();
		this.couponNum = couponNum;
		this.memNum = memNum;
		this.couponName = couponName;
		this.couponDiscount = couponDiscount;
		this.couponEnrollDate = couponEnrollDate;
		this.couponUsingDate = couponUsingDate;
		this.couponEndDate = couponEndDate;
	}


	public int getCouponNum() {
		return couponNum;
	}


	public void setCouponNum(int couponNum) {
		this.couponNum = couponNum;
	}


	public int getMemNum() {
		return memNum;
	}


	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}


	public String getCouponName() {
		return couponName;
	}


	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}


	public int getCouponDiscount() {
		return couponDiscount;
	}


	public void setCouponDiscount(int couponDiscount) {
		this.couponDiscount = couponDiscount;
	}


	public Date getCouponEnrollDate() {
		return couponEnrollDate;
	}


	public void setCouponEnrollDate(Date couponEnrollDate) {
		this.couponEnrollDate = couponEnrollDate;
	}


	public Date getCouponUsingDate() {
		return couponUsingDate;
	}


	public void setCouponUsingDate(Date couponUsingDate) {
		this.couponUsingDate = couponUsingDate;
	}


	public Date getCouponEndDate() {
		return couponEndDate;
	}


	public void setCouponEndDate(Date couponEndDate) {
		this.couponEndDate = couponEndDate;
	}


	@Override
	public String toString() {
		return "Coupon [couponNum=" + couponNum + ", memNum=" + memNum + ", couponName=" + couponName
				+ ", couponDiscount=" + couponDiscount + ", couponEnrollDate=" + couponEnrollDate + ", couponUsingDate="
				+ couponUsingDate + ", couponEndDate=" + couponEndDate + "]";
	}
	
	

}
