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


	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public int getNoticeCount() {
		return noticeCount;
	}

	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}

	public Date getNoticeEnrollDate() {
		return noticeEnrollDate;
	}

	public void setNoticeEnrollDate(Date noticeEnrollDate) {
		this.noticeEnrollDate = noticeEnrollDate;
	}

	public Date getNoticeModifyDate() {
		return noticeModifyDate;
	}

	public void setNoticeModifyDate(Date noticeModifyDate) {
		this.noticeModifyDate = noticeModifyDate;
	}

	public String getNoticeStatus() {
		return noticeStatus;
	}

	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}

	@Override
	public String toString() {
		return "Notice [noticeNum=" + noticeNum + ", memNum=" + memNum + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeCount=" + noticeCount + ", noticeEnrollDate="
				+ noticeEnrollDate + ", noticeModifyDate=" + noticeModifyDate + ", noticeStatus=" + noticeStatus + "]";
	}
	
	
	
}
