package com.ourcompany.class247.coupon.model.vo;

import java.sql.Date;

public class Coupon {
	
	private int couponType;
	private String couponName;
	private int couponDiscount;
	private Date couponStartDate;
	private Date couponEndDate;
	private int amount;
	
	public Coupon() {
		
	}

	public Coupon(int couponType, String couponName, int couponDiscount, Date couponStartDate, Date couponEndDate,
			int amount) {
		super();
		this.couponType = couponType;
		this.couponName = couponName;
		this.couponDiscount = couponDiscount;
		this.couponStartDate = couponStartDate;
		this.couponEndDate = couponEndDate;
		this.amount = amount;
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

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Coupon [couponType=" + couponType + ", couponName=" + couponName + ", couponDiscount=" + couponDiscount
				+ ", couponStartDate=" + couponStartDate + ", couponEndDate=" + couponEndDate + ", amount=" + amount
				+ "]";
	}
	
	
	

}
