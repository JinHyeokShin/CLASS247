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

	

	public int getFaqNum() {
		return faqNum;
	}

	public void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	@Override
	public String toString() {
		return "FAQ [faqNum=" + faqNum + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + "]";
	}
	
	

}
