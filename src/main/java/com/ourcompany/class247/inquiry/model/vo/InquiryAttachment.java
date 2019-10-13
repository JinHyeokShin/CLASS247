package com.ourcompany.class247.inquiry.model.vo;

public class InquiryAttachment {
	
	private int iaNum;
	private int inquiryNum;
	private String iaOName;
	private String iaRName;
	private String iaPaht;
	
	public InquiryAttachment() {
		
	}

	public InquiryAttachment(int iaNum, int inquiryNum, String iaOName, String iaRName, String iaPaht) {
		super();
		this.iaNum = iaNum;
		this.inquiryNum = inquiryNum;
		this.iaOName = iaOName;
		this.iaRName = iaRName;
		this.iaPaht = iaPaht;
	}

	public int getIaNum() {
		return iaNum;
	}

	public void setIaNum(int iaNum) {
		this.iaNum = iaNum;
	}

	public int getInquiryNum() {
		return inquiryNum;
	}

	public void setInquiryNum(int inquiryNum) {
		this.inquiryNum = inquiryNum;
	}

	public String getIaOName() {
		return iaOName;
	}

	public void setIaOName(String iaOName) {
		this.iaOName = iaOName;
	}

	public String getIaRName() {
		return iaRName;
	}

	public void setIaRName(String iaRName) {
		this.iaRName = iaRName;
	}

	public String getIaPaht() {
		return iaPaht;
	}

	public void setIaPaht(String iaPaht) {
		this.iaPaht = iaPaht;
	}

	@Override
	public String toString() {
		return "InquiryAttachment [iaNum=" + iaNum + ", inquiryNum=" + inquiryNum + ", iaOName=" + iaOName
				+ ", iaRName=" + iaRName + ", iaPaht=" + iaPaht + "]";
	}
	
	
}
