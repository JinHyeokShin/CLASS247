package com.ourcompany.class247.review.model.vo;

import java.sql.Date;

public class ReviewReply {
	
	private int revReplyNum;			//리뷰댓글번호
	private int reviewNum;				//리뷰번호
	private int memNum;					//회원번호
	private int revReplyParentNum;		//리뷰댓글부모번호
	private int revReplyDepth;			//리뷰댓글깊이
	private String revReplyContent;		//리뷰댓글내용
	private Date revReplyEnrollDate;	//리뷰댓글작성날짜
	private Date revReplyModifyDate;	//리뷰댓글수정날짜
	private String revReplyState;		//리뷰댓글상태
	
	public ReviewReply() {
		
	}

	public ReviewReply(int revReplyNum, int reviewNum, int memNum, int revReplyParentNum, int revReplyDepth,
			String revReplyContent, Date revReplyEnrollDate, Date revReplyModifyDate, String revReplyState) {
		super();
		this.revReplyNum = revReplyNum;
		this.reviewNum = reviewNum;
		this.memNum = memNum;
		this.revReplyParentNum = revReplyParentNum;
		this.revReplyDepth = revReplyDepth;
		this.revReplyContent = revReplyContent;
		this.revReplyEnrollDate = revReplyEnrollDate;
		this.revReplyModifyDate = revReplyModifyDate;
		this.revReplyState = revReplyState;
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

	public String getRevReplyState() {
		return revReplyState;
	}

	public void setRevReplyState(String revReplyState) {
		this.revReplyState = revReplyState;
	}

	@Override
	public String toString() {
		return "ReviewReply [revReplyNum=" + revReplyNum + ", reviewNum=" + reviewNum + ", memNum=" + memNum
				+ ", revReplyParentNum=" + revReplyParentNum + ", revReplyDepth=" + revReplyDepth + ", revReplyContent="
				+ revReplyContent + ", revReplyEnrollDate=" + revReplyEnrollDate + ", revReplyModifyDate="
				+ revReplyModifyDate + ", revReplyState=" + revReplyState + "]";
	}
	
	
	
	
	

}
