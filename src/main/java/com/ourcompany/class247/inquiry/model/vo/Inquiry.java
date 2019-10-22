package com.ourcompany.class247.inquiry.model.vo;

public class Inquiry {
	
	
	private int inquiryNum;				//문의번호
	private int memNum;					//작성자번호
	private String inquiryContent;		//문의내용
	private String inquiryPath;			//파일경로
	private String inquiryFileName;		//파일 이름
	private String answerContent;		//답변내용
	private String answerStatus;		//답변여부
	private String inquiryEnrollDate;	//작성날짜
	private String inquiryStatus;		//문의답변상태
	
	public Inquiry() {}
	
	public Inquiry(int inquiryNum, int memNum, String inquiryContent, String inquiryPath, String inquiryFileName,
			String answerContent, String answerStatus, String inquiryEnrollDate, String inquiryStatus) {
		super();
		this.inquiryNum = inquiryNum;
		this.memNum = memNum;
		this.inquiryContent = inquiryContent;
		this.inquiryPath = inquiryPath;
		this.inquiryFileName = inquiryFileName;
		this.answerContent = answerContent;
		this.answerStatus = answerStatus;
		this.inquiryEnrollDate = inquiryEnrollDate;
		this.inquiryStatus = inquiryStatus;
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

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public String getAnswerStatus() {
		return answerStatus;
	}

	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}

	public String getInquiryEnrollDate() {
		return inquiryEnrollDate;
	}

	public void setInquiryEnrollDate(String inquiryEnrollDate) {
		this.inquiryEnrollDate = inquiryEnrollDate;
	}

	public String getInquiryStatus() {
		return inquiryStatus;
	}

	public void setInquiryStatus(String inquiryStatus) {
		this.inquiryStatus = inquiryStatus;
	}

	@Override
	public String toString() {
		return "Inquiry [inquiryNum=" + inquiryNum + ", memNum=" + memNum + ", inquiryContent=" + inquiryContent
				+ ", inquiryPath=" + inquiryPath + ", inquiryFileName=" + inquiryFileName + ", answerContent="
				+ answerContent + ", answerStatus=" + answerStatus + ", inquiryEnrollDate=" + inquiryEnrollDate
				+ ", inquiryStatus=" + inquiryStatus + "]";
	}
	


}
