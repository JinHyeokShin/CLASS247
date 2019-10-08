package com.ourcompany.class247.review.model.vo;

import java.sql.Date;

public class ReviewReply {
	
	private int revReplyNum;
	private int reviewNum;
	private int memNum;
	private int revReplyParentNum;
	private int revReplyDepth;
	private String revReplyContent;
	private Date revReplyEnrollDate;
	private Date revReplyModifyDate;
	private String revReplyStat;
	
	public ReviewReply() {
		
	}
	
	
	public ReviewReply(int revReplyNum, int reviewNum, int memNum, int revReplyParentNum, int revReplyDepth,
			String revReplyContent, Date revReplyEnrollDate, Date revReplyModifyDate, String revReplyStat) {
		super();
		this.revReplyNum = revReplyNum;
		this.reviewNum = reviewNum;
		this.memNum = memNum;
		this.revReplyParentNum = revReplyParentNum;
		this.revReplyDepth = revReplyDepth;
		this.revReplyContent = revReplyContent;
		this.revReplyEnrollDate = revReplyEnrollDate;
		this.revReplyModifyDate = revReplyModifyDate;
		this.revReplyStat = revReplyStat;
	}


	int getRevReplyNum() {
		return revReplyNum;
	}


	void setRevReplyNum(int revReplyNum) {
		this.revReplyNum = revReplyNum;
	}


	int getReviewNum() {
		return reviewNum;
	}


	void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}


	int getMemNum() {
		return memNum;
	}


	void setMemNum(int memNum) {
		this.memNum = memNum;
	}


	int getRevReplyParentNum() {
		return revReplyParentNum;
	}


	void setRevReplyParentNum(int revReplyParentNum) {
		this.revReplyParentNum = revReplyParentNum;
	}


	int getRevReplyDepth() {
		return revReplyDepth;
	}


	void setRevReplyDepth(int revReplyDepth) {
		this.revReplyDepth = revReplyDepth;
	}


	String getRevReplyContent() {
		return revReplyContent;
	}


	void setRevReplyContent(String revReplyContent) {
		this.revReplyContent = revReplyContent;
	}


	Date getRevReplyEnrollDate() {
		return revReplyEnrollDate;
	}


	void setRevReplyEnrollDate(Date revReplyEnrollDate) {
		this.revReplyEnrollDate = revReplyEnrollDate;
	}


	Date getRevReplyModifyDate() {
		return revReplyModifyDate;
	}


	void setRevReplyModifyDate(Date revReplyModifyDate) {
		this.revReplyModifyDate = revReplyModifyDate;
	}


	String getRevReplyStat() {
		return revReplyStat;
	}


	void setRevReplyStat(String revReplyStat) {
		this.revReplyStat = revReplyStat;
	}


	@Override
	public String toString() {
		return "ReviewReply [revReplyNum=" + revReplyNum + ", reviewNum=" + reviewNum + ", memNum=" + memNum
				+ ", revReplyParentNum=" + revReplyParentNum + ", revReplyDepth=" + revReplyDepth + ", revReplyContent="
				+ revReplyContent + ", revReplyEnrollDate=" + revReplyEnrollDate + ", revReplyModifyDate="
				+ revReplyModifyDate + ", revReplyStat=" + revReplyStat + "]";
	}
	
	
	
	

}
