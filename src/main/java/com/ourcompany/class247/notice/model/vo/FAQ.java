package com.ourcompany.class247.notice.model.vo;

public class FAQ {
	
	private int faqNum;			//FAQ번호
	private String faqTitle;	//FAQ제목
	private String faqContent;	//FAQ내용
	
	public FAQ() {
		
	}

	public FAQ(int faqNum, String faqTitle, String faqContent) {
		super();
		this.faqNum = faqNum;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
	}

	int getFaqNum() {
		return faqNum;
	}

	void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}

	String getFaqTitle() {
		return faqTitle;
	}

	void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	String getFaqContent() {
		return faqContent;
	}

	void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	@Override
	public String toString() {
		return "FAQ [faqNum=" + faqNum + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + "]";
	}
	
	

}
