package com.ourcompany.class247.inquiry.model.vo;

import java.sql.Date;

public class Inquiry {
	
	
	private int inquiryNum;				//문의번호
	private int creNum;					//크리에이터번호
	private String inquiryTitle;		//문의제목
	private String inquiryContent;		//문의내용
	private String inquiryPath;			//파일경로
	private String inquiryFileName;		//파일 이름
	private Date inquiryEnrollDate;		//작성날짜
	private String inquiryStatus;		//상태
	private String answerContent;		//답변내용
	private Date answerEnrollDate;		//답변 날짜
	private String answerStatus;		//답변여부
	
	
	public Inquiry() {}


	public Inquiry(int inquiryNum, int creNum, String inquiryTitle, String inquiryContent, String inquiryPath,
			String inquiryFileName, Date inquiryEnrollDate, String inquiryStatus, String answerContent,
			Date answerEnrollDate, String answerStatus) {
		super();
		this.inquiryNum = inquiryNum;
		this.creNum = creNum;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryPath = inquiryPath;
		this.inquiryFileName = inquiryFileName;
		this.inquiryEnrollDate = inquiryEnrollDate;
		this.inquiryStatus = inquiryStatus;
		this.answerContent = answerContent;
		this.answerEnrollDate = answerEnrollDate;
		this.answerStatus = answerStatus;
	}


	public int getInquiryNum() {
		return inquiryNum;
	}


	public void setInquiryNum(int inquiryNum) {
		this.inquiryNum = inquiryNum;
	}


	public int getCreNum() {
		return creNum;
	}


	public void setCreNum(int creNum) {
		this.creNum = creNum;
	}


	public String getInquiryTitle() {
		return inquiryTitle;
	}


	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}


	public String getInquiryContent() {
		return inquiryContent;
	}


	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}


	public String getInquiryPath() {
		return inquiryPath;
	}


	public void setInquiryPath(String inquiryPath) {
		this.inquiryPath = inquiryPath;
	}


	public String getInquiryFileName() {
		return inquiryFileName;
	}


	public void setInquiryFileName(String inquiryFileName) {
		this.inquiryFileName = inquiryFileName;
	}


	public Date getInquiryEnrollDate() {
		return inquiryEnrollDate;
	}


	public void setInquiryEnrollDate(Date inquiryEnrollDate) {
		this.inquiryEnrollDate = inquiryEnrollDate;
	}


	public String getInquiryStatus() {
		return inquiryStatus;
	}


	public void setInquiryStatus(String inquiryStatus) {
		this.inquiryStatus = inquiryStatus;
	}


	public String getAnswerContent() {
		return answerContent;
	}


	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}


	public Date getAnswerEnrollDate() {
		return answerEnrollDate;
	}


	public void setAnswerEnrollDate(Date answerEnrollDate) {
		this.answerEnrollDate = answerEnrollDate;
	}


	public String getAnswerStatus() {
		return answerStatus;
	}


	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}


	@Override
	public String toString() {
		return "Inquiry [inquiryNum=" + inquiryNum + ", creNum=" + creNum + ", inquiryTitle=" + inquiryTitle
				+ ", inquiryContent=" + inquiryContent + ", inquiryPath=" + inquiryPath + ", inquiryFileName="
				+ inquiryFileName + ", inquiryEnrollDate=" + inquiryEnrollDate + ", inquiryStatus=" + inquiryStatus
				+ ", answerContent=" + answerContent + ", answerEnrollDate=" + answerEnrollDate + ", answerStatus="
				+ answerStatus + "]";
	}
	
	
	

}
