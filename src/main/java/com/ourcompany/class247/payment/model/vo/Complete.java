package com.ourcompany.class247.payment.model.vo;

public class Complete {
	private String courseTitle;
	private String memNickName; // 크리에이터의 닉네임
	private int memNum; // 구매한 회원의 번호
	private String categoryName;
	private String payCode;
	private int payPrice;
	private String coaRName;
	
	
	public Complete() {
		super();
	}


	public Complete(String courseTitle, String memNickName, int memNum, String categoryName, String payCode,
			int payPrice) {
		super();
		this.courseTitle = courseTitle;
		this.memNickName = memNickName;
		this.memNum = memNum;
		this.categoryName = categoryName;
		this.payCode = payCode;
		this.payPrice = payPrice;
	}


	public Complete(String courseTitle, String memNickName, int memNum, String categoryName, String payCode,
			int payPrice, String coaRName) {
		super();
		this.courseTitle = courseTitle;
		this.memNickName = memNickName;
		this.memNum = memNum;
		this.categoryName = categoryName;
		this.payCode = payCode;
		this.payPrice = payPrice;
		this.coaRName = coaRName;
	}


	public String getCoaRName() {
		return coaRName;
	}


	public void setCoaRName(String coaRName) {
		this.coaRName = coaRName;
	}


	public String getCourseTitle() {
		return courseTitle;
	}


	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}


	public String getMemNickName() {
		return memNickName;
	}


	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}


	public int getMemNum() {
		return memNum;
	}


	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}


	public String getCategoryName() {
		return categoryName;
	}


	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}


	public String getPayCode() {
		return payCode;
	}


	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}


	public int getPayPrice() {
		return payPrice;
	}


	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}


	@Override
	public String toString() {
		return "Complete [courseTitle=" + courseTitle + ", memNickName=" + memNickName + ", memNum=" + memNum
				+ ", categoryName=" + categoryName + ", payCode=" + payCode + ", payPrice=" + payPrice + ", coaRName="
				+ coaRName + "]";
	}


	

	
	
}
