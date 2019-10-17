package com.ourcompany.class247.coupon.model.vo;

import java.sql.Date;

public class Coupon {
	
	private int rNum; //리스트 번호
	private int givecouponNum; //발급쿠폰번호
	private int memNum; //회원번호
	private Date givecouponEnrolledDate; //쿠폰발급날짜
	private Date givecouponUsingDate; //쿠폰사용날짜
	private String givecouponStatus; //발급쿠폰상태 Y,N
	private int couponType;
	private String couponName;
	private int couponDiscount;
	private Date couponStartDate;
	private Date couponEndDate;
	
	
	
	public Coupon() {
		
	}
	




	public Coupon(int rNum, int givecouponNum, int memNum, Date givecouponEnrolledDate, Date givecouponUsingDate,
			String givecouponStatus, int couponType, String couponName, int couponDiscount, Date couponStartDate,
			Date couponEndDate) {
		super();
		this.rNum = rNum;
		this.givecouponNum = givecouponNum;
		this.memNum = memNum;
		this.givecouponEnrolledDate = givecouponEnrolledDate;
		this.givecouponUsingDate = givecouponUsingDate;
		this.givecouponStatus = givecouponStatus;
		this.couponType = couponType;
		this.couponName = couponName;
		this.couponDiscount = couponDiscount;
		this.couponStartDate = couponStartDate;
		this.couponEndDate = couponEndDate;
	}





	public int getrNum() {
		return rNum;
	}





	public void setrNum(int rNum) {
		this.rNum = rNum;
	}





	public int getCouponType() {
		return couponType;
	}


	public void setCouponType(int couponType) {
		this.couponType = couponType;
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


	public Date getCouponStartDate() {
		return couponStartDate;
	}


	public void setCouponStartDate(Date couponStartDate) {
		this.couponStartDate = couponStartDate;
	}


	public Date getCouponEndDate() {
		return couponEndDate;
	}


	public void setCouponEndDate(Date couponEndDate) {
		this.couponEndDate = couponEndDate;
	}


	public int getGivecouponNum() {
		return givecouponNum;
	}


	public void setGivecouponNum(int givecouponNum) {
		this.givecouponNum = givecouponNum;
	}


	public int getMemNum() {
		return memNum;
	}


	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}


	public Date getGivecouponEnrolledDate() {
		return givecouponEnrolledDate;
	}


	public void setGivecouponEnrolledDate(Date givecouponEnrolledDate) {
		this.givecouponEnrolledDate = givecouponEnrolledDate;
	}


	public Date getGivecouponUsingDate() {
		return givecouponUsingDate;
	}


	public void setGivecouponUsingDate(Date givecouponUsingDate) {
		this.givecouponUsingDate = givecouponUsingDate;
	}


	public String getGivecouponStatus() {
		return givecouponStatus;
	}


	public void setGivecouponStatus(String givecouponStatus) {
		this.givecouponStatus = givecouponStatus;
	}





	@Override
	public String toString() {
		return "Coupon [rNum=" + rNum + ", givecouponNum=" + givecouponNum + ", memNum=" + memNum
				+ ", givecouponEnrolledDate=" + givecouponEnrolledDate + ", givecouponUsingDate=" + givecouponUsingDate
				+ ", givecouponStatus=" + givecouponStatus + ", couponType=" + couponType + ", couponName=" + couponName
				+ ", couponDiscount=" + couponDiscount + ", couponStartDate=" + couponStartDate + ", couponEndDate="
				+ couponEndDate + "]";
	}

	
}
