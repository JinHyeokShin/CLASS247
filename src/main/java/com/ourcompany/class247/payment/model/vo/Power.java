package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class Power {
	
	private int powerNum;			//파워번호
	private int courseNum;			//수업번호
	private String payCode;				//결제번호
	private Date powerStartDate;	//파워등록날짜
	private Date powerEndDate;		//파워종료날짜
	private String powerStatus;		//등록상태
	
	public Power() {
		
	}

	public Power(int powerNum, int courseNum, String payCode, Date powerStartDate, Date powerEndDate,
			String powerStatus) {
		super();
		this.powerNum = powerNum;
		this.courseNum = courseNum;
		this.payCode = payCode;
		this.powerStartDate = powerStartDate;
		this.powerEndDate = powerEndDate;
		this.powerStatus = powerStatus;
	}

	public int getPowerNum() {
		return powerNum;
	}

	public void setPowerNum(int powerNum) {
		this.powerNum = powerNum;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getPayCode() {
		return payCode;
	}

	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}

	public Date getPowerStartDate() {
		return powerStartDate;
	}

	public void setPowerStartDate(Date powerStartDate) {
		this.powerStartDate = powerStartDate;
	}

	public Date getPowerEndDate() {
		return powerEndDate;
	}

	public void setPowerEndDate(Date powerEndDate) {
		this.powerEndDate = powerEndDate;
	}

	public String getPowerStatus() {
		return powerStatus;
	}

	public void setPowerStatus(String powerStatus) {
		this.powerStatus = powerStatus;
	}

	@Override
	public String toString() {
		return "Power [powerNum=" + powerNum + ", courseNum=" + courseNum + ", payCode=" + payCode + ", powerStartDate="
				+ powerStartDate + ", powerEndDate=" + powerEndDate + ", powerStatus=" + powerStatus + "]";
	}



	
	

}
