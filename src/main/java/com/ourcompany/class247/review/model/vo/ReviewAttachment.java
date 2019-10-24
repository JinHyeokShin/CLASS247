package com.ourcompany.class247.review.model.vo;

public class ReviewAttachment {
	
	private int raNum;	//리뷰파일번호
	private int reviewNum;	//리뷰번호
	private int revReplyNum;	//리뷰댓글번호
	private String raOName;	//파일원본이름
	private String raRName;	//파일저장이름
	private String raPath;	//저장경로
	
	public ReviewAttachment() {
		
	}

	public ReviewAttachment(int raNum, int reviewNum, int revReplyNum, String raOName, String raRName, String raPath) {
		super();
		this.raNum = raNum;
		this.reviewNum = reviewNum;
		this.revReplyNum = revReplyNum;
		this.raOName = raOName;
		this.raRName = raRName;
		this.raPath = raPath;
	}

	public int getRaNum() {
		return raNum;
	}

	public void setRaNum(int raNum) {
		this.raNum = raNum;
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
		return "ReviewAttachment [raNum=" + raNum + ", reviewNum=" + reviewNum + ", revReplyNum=" + revReplyNum
				+ ", raOName=" + raOName + ", raRName=" + raRName + ", raPath=" + raPath + "]";
	}
	
}
