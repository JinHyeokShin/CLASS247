package com.ourcompany.class247.review.model.vo;
import java.sql.Date;

public class Review {
	
	private int reviewNum;				//리뷰번호
	private int courseNum;				//수업번호
	private int memNum;					//회원번호
	private String reviewContent;		//리뷰내용
	private Date reviewEnrollDate;		//작성날짜
	private Date reviewModifyDate;		//수정날짜
	private String reviewStatus;		//상태값
	
	public Review() {
		
	}

	public Review(int reviewNum, int courseNum, int memNum, String reviewContent, Date reviewEnrollDate,
			Date reviewModifyDate, String reviewStatus) {
		super();
		this.reviewNum = reviewNum;
		this.courseNum = courseNum;
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

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
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
		return "Review [reviewNum=" + reviewNum + ", courseNum=" + courseNum + ", memNum=" + memNum + ", reviewContent="
				+ reviewContent + ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate
				+ ", reviewStatus=" + reviewStatus + "]";
	}
	


}
