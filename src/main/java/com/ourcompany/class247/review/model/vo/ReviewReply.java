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
	
		

	public int getRevReplyNum() {
		return revReplyNum;
	}


	public void setRevReplyNum(int revReplyNum) {
		this.revReplyNum = revReplyNum;
	}


	public int getReviewNum() {
		return reviewNum;
	}


	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}


	public int getMemNum() {
		return memNum;
	}


	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}


	public int getRevReplyParentNum() {
		return revReplyParentNum;
	}


	public void setRevReplyParentNum(int revReplyParentNum) {
		this.revReplyParentNum = revReplyParentNum;
	}


	public int getRevReplyDepth() {
		return revReplyDepth;
	}


	public void setRevReplyDepth(int revReplyDepth) {
		this.revReplyDepth = revReplyDepth;
	}


	public String getRevReplyContent() {
		return revReplyContent;
	}


	public void setRevReplyContent(String revReplyContent) {
		this.revReplyContent = revReplyContent;
	}


	public Date getRevReplyEnrollDate() {
		return revReplyEnrollDate;
	}


	public void setRevReplyEnrollDate(Date revReplyEnrollDate) {
		this.revReplyEnrollDate = revReplyEnrollDate;
	}


	public Date getRevReplyModifyDate() {
		return revReplyModifyDate;
	}


	public void setRevReplyModifyDate(Date revReplyModifyDate) {
		this.revReplyModifyDate = revReplyModifyDate;
	}


	public String getRevReplyStat() {
		return revReplyStat;
	}


	public void setRevReplyStat(String revReplyStat) {
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
