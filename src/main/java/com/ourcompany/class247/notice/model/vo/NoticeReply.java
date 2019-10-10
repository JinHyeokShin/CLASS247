package com.ourcompany.class247.notice.model.vo;

import java.sql.Date;

public class NoticeReply {
	
	private int nReplyNum;			//공지사항리뷰번호
	private int noticeNum;			//공지사항번호
	private int memNum;				//작성자번호
	private int nReplyParentNum;	//댓글리뷰번호
	private int nReplyDepth;		//댓글깊이
	private String nReplyContent;	//댓글내용
	private Date nReplyEnrollDate;	//작성날짜
	private Date nReplyModifyDate;	//수정날짜
	private String nReplyStatus;	//상태값
	
	public NoticeReply() {
		
	}
	
	public NoticeReply(int nReplyNum, int noticeNum, int memNum, int nReplyParentNum, int nReplyDepth,
			String nReplyContent, Date nReplyEnrollDate, Date nReplyModifyDate, String nReplyStatus) {
		super();
		this.nReplyNum = nReplyNum;
		this.noticeNum = noticeNum;
		this.memNum = memNum;
		this.nReplyParentNum = nReplyParentNum;
		this.nReplyDepth = nReplyDepth;
		this.nReplyContent = nReplyContent;
		this.nReplyEnrollDate = nReplyEnrollDate;
		this.nReplyModifyDate = nReplyModifyDate;
		this.nReplyStatus = nReplyStatus;
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

	public String getnReplyStatus() {
		return nReplyStatus;
	}

	public void setnReplyStatus(String nReplyStatus) {
		this.nReplyStatus = nReplyStatus;
	}

	@Override
	public String toString() {
		return "NoticeReply [nReplyNum=" + nReplyNum + ", noticeNum=" + noticeNum + ", memNum=" + memNum
				+ ", nReplyParentNum=" + nReplyParentNum + ", nReplyDepth=" + nReplyDepth + ", nReplyContent="
				+ nReplyContent + ", nReplyEnrollDate=" + nReplyEnrollDate + ", nReplyModifyDate=" + nReplyModifyDate
				+ ", nReplyStatus=" + nReplyStatus + "]";
	}
	
	

}