package com.ourcompany.class247.notice.vo;

import java.sql.Date;

public class Notice {
	
	private int noticeNum;
	private int memNum;
	private String noticeTitle;
	private String noticeContent;
	private int noticeCount;
	private Date noticeEnrollDate;
	private Date noticeModifyDate;
	
	public Notice() {
		
	}
	
	public Notice(int noticeNum, int memNum, String noticeTitle, String noticeContent, int noticeCount,
			Date noticeEnrollDate, Date noticeModifyDate) {
		super();
		this.noticeNum = noticeNum;
		this.memNum = memNum;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeCount = noticeCount;
		this.noticeEnrollDate = noticeEnrollDate;
		this.noticeModifyDate = noticeModifyDate;
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

	@Override
	public String toString() {
		return "Notice [noticeNum=" + noticeNum + ", memNum=" + memNum + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeCount=" + noticeCount + "]";
	}
	
	

}
