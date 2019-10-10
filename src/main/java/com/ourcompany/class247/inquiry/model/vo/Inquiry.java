package com.ourcompany.class247.inquiry.model.vo;

public class Inquiry {
	
	private int inquiryNum;				//문의번호
	private int memNum;					//작성자번호
	private int inquiryParentNum;		//문의상단번호
	private String inquiryContent;		//문의내용
	private String inquiryAnswer;		//문의답변상태
	private String inquiryEnrollDate;	//작성날짜
	
	public Inquiry() {
		
	}

	public Inquiry(int inquiryNum, int memNum, int inquiryParentNum, String inquiryContent, String inquiryAnswer,
			String inquiryEnrollDate) {
		super();
		this.inquiryNum = inquiryNum;
		this.memNum = memNum;
		this.inquiryParentNum = inquiryParentNum;
		this.inquiryContent = inquiryContent;
		this.inquiryAnswer = inquiryAnswer;
		this.inquiryEnrollDate = inquiryEnrollDate;
	}

	public int getInquiryNum() {
		return inquiryNum;
	}

	public void setInquiryNum(int inquiryNum) {
		this.inquiryNum = inquiryNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public int getInquiryParentNum() {
		return inquiryParentNum;
	}

	public void setInquiryParentNum(int inquiryParentNum) {
		this.inquiryParentNum = inquiryParentNum;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	public String getInquiryAnswer() {
		return inquiryAnswer;
	}

	public void setInquiryAnswer(String inquiryAnswer) {
		this.inquiryAnswer = inquiryAnswer;
	}

	public String getInquiryEnrollDate() {
		return inquiryEnrollDate;
	}

	public void setInquiryEnrollDate(String inquiryEnrollDate) {
		this.inquiryEnrollDate = inquiryEnrollDate;
	}

	@Override
	public String toString() {
		return "Inquiry [inquiryNum=" + inquiryNum + ", memNum=" + memNum + ", inquiryParentNum=" + inquiryParentNum
				+ ", inquiryContent=" + inquiryContent + ", inquiryAnswer=" + inquiryAnswer + ", inquiryEnrollDate="
				+ inquiryEnrollDate + "]";
	}
	
	

}
