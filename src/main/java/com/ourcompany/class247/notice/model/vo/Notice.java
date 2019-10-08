package com.ourcompany.class247.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noticeNum;			//공지사항번호
	private int memNum;				//회원번호
	private String noticeTitle;		//공지사항제목
	private String noticeContent;	//공지사항내용
	private int noticeCount;		//공지사항조회수
	private Date noticeEnrollDate;	//작성날짜
	private Date noticeModifyDate;	//수정날짜
	private String noticeStatus;	//상태값
	
	public Notice() {
		
	}

	public Notice(int noticeNum, int memNum, String noticeTitle, String noticeContent, int noticeCount,
			Date noticeEnrollDate, Date noticeModifyDate, String noticeStatus) {
		super();
		this.noticeNum = noticeNum;
		this.memNum = memNum;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeCount = noticeCount;
		this.noticeEnrollDate = noticeEnrollDate;
		this.noticeModifyDate = noticeModifyDate;
		this.noticeStatus = noticeStatus;
	}

	int getNoticeNum() {
		return noticeNum;
	}

	void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	int getMemNum() {
		return memNum;
	}

	void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	String getNoticeTitle() {
		return noticeTitle;
	}

	void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	String getNoticeContent() {
		return noticeContent;
	}

	void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	int getNoticeCount() {
		return noticeCount;
	}

	void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}

	Date getNoticeEnrollDate() {
		return noticeEnrollDate;
	}

	void setNoticeEnrollDate(Date noticeEnrollDate) {
		this.noticeEnrollDate = noticeEnrollDate;
	}

	Date getNoticeModifyDate() {
		return noticeModifyDate;
	}

	void setNoticeModifyDate(Date noticeModifyDate) {
		this.noticeModifyDate = noticeModifyDate;
	}

	String getNoticeStatus() {
		return noticeStatus;
	}

	void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}

	@Override
	public String toString() {
		return "Notice [noticeNum=" + noticeNum + ", memNum=" + memNum + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeCount=" + noticeCount + ", noticeEnrollDate="
				+ noticeEnrollDate + ", noticeModifyDate=" + noticeModifyDate + ", noticeStatus=" + noticeStatus + "]";
	}
	
	
	
}
