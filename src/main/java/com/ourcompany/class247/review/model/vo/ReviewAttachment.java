package com.ourcompany.class247.review.model.vo;

public class ReviewAttachment {
	
	private int rNum;
	private int reviewNum;
	private int revReplyNum;
	private String raOName;
	private String raRName;
	private String raPath;
	
	public ReviewAttachment() {
		
	}

	public ReviewAttachment(int rNum, int reviewNum, int revReplyNum, String raOName, String raRName, String raPath) {
		super();
		this.rNum = rNum;
		this.reviewNum = reviewNum;
		this.revReplyNum = revReplyNum;
		this.raOName = raOName;
		this.raRName = raRName;
		this.raPath = raPath;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public int getRevReplyNum() {
		return revReplyNum;
	}

	public void setRevReplyNum(int revReplyNum) {
		this.revReplyNum = revReplyNum;
	}

	public String getRaOName() {
		return raOName;
	}

	public void setRaOName(String raOName) {
		this.raOName = raOName;
	}

	public String getRaRName() {
		return raRName;
	}

	public void setRaRName(String raRName) {
		this.raRName = raRName;
	}

	public String getRaPath() {
		return raPath;
	}

	public void setRaPath(String raPath) {
		this.raPath = raPath;
	}

	@Override
	public String toString() {
		return "ReviewAttachment [rNum=" + rNum + ", reviewNum=" + reviewNum + ", revReplyNum=" + revReplyNum
				+ ", raOName=" + raOName + ", raRName=" + raRName + ", raPath=" + raPath + "]";
	}
	
	
	

}
