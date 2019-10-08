package com.ourcompany.class247.review.model.vo;
import java.sql.Date;

public class Review {
	
	private int reviewNum;
	private int classNum;
	private int memNum;
	private String reviewContent;
	private Date reviewEnrollDate;
	private Date reviewModifyDate;
	private String reviewStatus;
	
	public Review() {
		
	}
	
	public Review(int reviewNum, int classNum, int memNum, String reviewContent, Date reviewEnrollDate,
			Date reviewModifyDate, String reviewStatus) {
		super();
		this.reviewNum = reviewNum;
		this.classNum = classNum;
		this.memNum = memNum;
		this.reviewContent = reviewContent;
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewModifyDate = reviewModifyDate;
		this.reviewStatus = reviewStatus;
	}

	int getReviewNum() {
		return reviewNum;
	}

	void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	int getClassNum() {
		return classNum;
	}

	void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	int getMemNum() {
		return memNum;
	}

	void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	String getReviewContent() {
		return reviewContent;
	}

	void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	Date getReviewEnrollDate() {
		return reviewEnrollDate;
	}

	void setReviewEnrollDate(Date reviewEnrollDate) {
		this.reviewEnrollDate = reviewEnrollDate;
	}

	Date getReviewModifyDate() {
		return reviewModifyDate;
	}

	void setReviewModifyDate(Date reviewModifyDate) {
		this.reviewModifyDate = reviewModifyDate;
	}

	String getReviewStatus() {
		return reviewStatus;
	}

	void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	@Override
	public String toString() {
		return "Review [reviewNum=" + reviewNum + ", classNum=" + classNum + ", memNum=" + memNum + ", reviewContent="
				+ reviewContent + ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate
				+ ", reviewStatus=" + reviewStatus + "]";
	}
	
	
	

}
