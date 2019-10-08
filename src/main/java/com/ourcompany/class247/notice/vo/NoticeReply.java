package com.ourcompany.class247.notice.vo;

import java.sql.Date;

public class NoticeReply {
	
	private int nReplyNum;
	private int noticeNum;
	private int memNum;
	private int nReplyParentNum;
	private int nReplyDepth;
	private String nReplyContent;
	private Date nReplyEnrollDate;
	private Date nReplyModifyDate;
	
	public NoticeReply() {
		
	}

	public NoticeReply(int nReplyNum, int noticeNum, int memNum, int nReplyParentNum, int nReplyDepth,
			String nReplyContent, Date nReplyEnrollDate, Date nReplyModifyDate) {
		super();
		this.nReplyNum = nReplyNum;
		this.noticeNum = noticeNum;
		this.memNum = memNum;
		this.nReplyParentNum = nReplyParentNum;
		this.nReplyDepth = nReplyDepth;
		this.nReplyContent = nReplyContent;
		this.nReplyEnrollDate = nReplyEnrollDate;
		this.nReplyModifyDate = nReplyModifyDate;
	}

	public int getnReplyNum() {
		return nReplyNum;
	}

	public void setnReplyNum(int nReplyNum) {
		this.nReplyNum = nReplyNum;
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

	public int getnReplyParentNum() {
		return nReplyParentNum;
	}

	public void setnReplyParentNum(int nReplyParentNum) {
		this.nReplyParentNum = nReplyParentNum;
	}

	public int getnReplyDepth() {
		return nReplyDepth;
	}

	public void setnReplyDepth(int nReplyDepth) {
		this.nReplyDepth = nReplyDepth;
	}

	public String getnReplyContent() {
		return nReplyContent;
	}

	public void setnReplyContent(String nReplyContent) {
		this.nReplyContent = nReplyContent;
	}

	public Date getnReplyEnrollDate() {
		return nReplyEnrollDate;
	}

	public void setnReplyEnrollDate(Date nReplyEnrollDate) {
		this.nReplyEnrollDate = nReplyEnrollDate;
	}

	public Date getnReplyModifyDate() {
		return nReplyModifyDate;
	}

	public void setnReplyModifyDate(Date nReplyModifyDate) {
		this.nReplyModifyDate = nReplyModifyDate;
	}

	@Override
	public String toString() {
		return "NoticeReply [nReplyNum=" + nReplyNum + ", noticeNum=" + noticeNum + ", memNum=" + memNum
				+ ", nReplyParentNum=" + nReplyParentNum + ", nReplyDepth=" + nReplyDepth + ", nReplyContent="
				+ nReplyContent + ", nReplyEnrollDate=" + nReplyEnrollDate + ", nReplyModifyDate=" + nReplyModifyDate
				+ "]";
	}
	
	

}
