package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class Payment {
	
	private int payNum;				//결제번호
	private int memNum;				//회원번호
	private int payPrice;			//결제금액
	private String payMethod;		//결제수단
	private String payCancel;		//결제취소
	private Date payDate;			//결제날짜
	private Date payCancelDate;		//결제취소날짜
	
	public Payment() {
		
	}

	public Payment(int payNum, int memNum, int payPrice, String payMethod, String payCancel, Date payDate,
			Date payCancelDate) {
		super();
		this.payNum = payNum;
		this.memNum = memNum;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		this.payCancel = payCancel;
		this.payDate = payDate;
		this.payCancelDate = payCancelDate;
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

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public String getPayCancel() {
		return payCancel;
	}

	public void setPayCancel(String payCancel) {
		this.payCancel = payCancel;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public Date getPayCancelDate() {
		return payCancelDate;
	}

	public void setPayCancelDate(Date payCancelDate) {
		this.payCancelDate = payCancelDate;
	}

	@Override
	public String toString() {
		return "Payment [payNum=" + payNum + ", memNum=" + memNum + ", payPrice=" + payPrice + ", payMethod="
				+ payMethod + ", payCancel=" + payCancel + ", payDate=" + payDate + ", payCancelDate=" + payCancelDate
				+ "]";
	}
	
	

}