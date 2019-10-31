package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class Payment {
	
	private int payNum;				//결제번호
	private String payCode;			// 결제코드
	private int memNum;				//회원번호
	private String memName;
	private int courseNum;
	private String courseTitle;		//클래스이름
	private int payPrice;			//결제금액
	private String payMethod;		//결제수단
	private String payCancel;		//결제취소
	private Date payDate;			//결제날짜
	private Date payCancelDate;		//결제취소날짜
	
	public Payment() {
		
	}

	public Payment(int payNum, String payCode, int memNum, int courseNum, String courseTitle, int payPrice,
			String payMethod, String payCancel, Date payDate, Date payCancelDate) {
		super();
		this.payNum = payNum;
		this.payCode = payCode;
		this.memNum = memNum;
		this.courseNum = courseNum;
		this.courseTitle = courseTitle;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		this.payCancel = payCancel;
		this.payDate = payDate;
		this.payCancelDate = payCancelDate;
	}


//	payment insert용
	public Payment(int memNum, int courseNum, int payPrice, String payMethod) {
		super();
		
		this.memNum = memNum;
		this.courseNum = courseNum;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		
	}


	public Payment(int payNum, String payCode, int memNum, String memName, int courseNum, String courseTitle,
			int payPrice, String payMethod, String payCancel, Date payDate, Date payCancelDate) {
		super();
		this.payNum = payNum;
		this.payCode = payCode;
		this.memNum = memNum;
		this.memName = memName;
		this.courseNum = courseNum;
		this.courseTitle = courseTitle;
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


	public String getPayCode() {
		return payCode;
	}


	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
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

	public void setPayCancel(String payCancel) {
		this.payCancel = payCancel;
	}

	public Date getPayDate() {
		return payDate;
	}

	public Date getPayCancelDate() {
		return payCancelDate;
	}

	public void setPayCancelDate(Date payCancelDate) {
		this.payCancelDate = payCancelDate;
	}


	@Override
	public String toString() {
		return "Payment [payNum=" + payNum + ", payCode=" + payCode + ", memNum=" + memNum + ", memName=" + memName
				+ ", courseNum=" + courseNum + ", courseTitle=" + courseTitle + ", payPrice=" + payPrice
				+ ", payMethod=" + payMethod + ", payCancel=" + payCancel + ", payDate=" + payDate + ", payCancelDate="
				+ payCancelDate + "]";
	}
	
	


}
