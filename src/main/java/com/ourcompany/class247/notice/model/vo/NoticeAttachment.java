package com.ourcompany.class247.notice.model.vo;

public class NoticeAttachment {
	
	private int naNum;
	private int noticeNum;
	private String naOName;
	private String naRName;
	private String naPath;
	
	public NoticeAttachment() {
		
	}

	public NoticeAttachment(int naNum, int noticeNum, String naOName, String naRName, String naPath) {
		super();
		this.naNum = naNum;
		this.noticeNum = noticeNum;
		this.naOName = naOName;
		this.naRName = naRName;
		this.naPath = naPath;
	}

	public int getNaNum() {
		return naNum;
	}

	public void setNaNum(int naNum) {
		this.naNum = naNum;
	}

	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	public String getNaOName() {
		return naOName;
	}

	public void setNaOName(String naOName) {
		this.naOName = naOName;
	}

	public String getNaRName() {
		return naRName;
	}

	public void setNaRName(String naRName) {
		this.naRName = naRName;
	}

	public String getNaPath() {
		return naPath;
	}

	public void setNaPath(String naPath) {
		this.naPath = naPath;
	}

	@Override
	public String toString() {
		return "NoticeAttachment [naNum=" + naNum + ", noticeNum=" + noticeNum + ", naOName=" + naOName + ", naRName="
				+ naRName + ", naPath=" + naPath + "]";
	}
	
	
}
