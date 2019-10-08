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

	

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getReviewEnrollDate() {
		return reviewEnrollDate;
	}

	public void setReviewEnrollDate(Date reviewEnrollDate) {
		this.reviewEnrollDate = reviewEnrollDate;
	}

	public Date getReviewModifyDate() {
		return reviewModifyDate;
	}

	public void setReviewModifyDate(Date reviewModifyDate) {
		this.reviewModifyDate = reviewModifyDate;
	}

	public String getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	@Override
	public String toString() {
		return "Review [reviewNum=" + reviewNum + ", classNum=" + classNum + ", memNum=" + memNum + ", reviewContent="
				+ reviewContent + ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate
				+ ", reviewStatus=" + reviewStatus + "]";
	}
	
	
	

}
