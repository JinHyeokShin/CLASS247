package com.ourcompany.class247.chat.model.vo;

import java.sql.Date;

public class ChatList {
	
	private int chatListNum;
	private int courseNum; 
	private String fromId;
	private String fromName; 
	private String toId;
	private String toName;
	private Date lastChatTime;
	private String lastChatContent;
	private String readStatus;
	private String chatStatus;
	private String stuProfile;	//학생프로필사진
	
	ChatList() {}
	

	public ChatList(int courseNum, String fromId, String toId) {
		super();
		this.courseNum = courseNum;
		this.fromId = fromId;
		this.toId = toId;
	}

	public ChatList(int chatListNum, int courseNum, String fromId, String fromName, String toId, String toName,
			Date lastChatTime, String lastChatContent, String readStatus, String chatStatus, String stuProfile) {
		super();
		this.chatListNum = chatListNum;
		this.courseNum = courseNum;
		this.fromId = fromId;
		this.fromName = fromName;
		this.toId = toId;
		this.toName = toName;
		this.lastChatTime = lastChatTime;
		this.lastChatContent = lastChatContent;
		this.readStatus = readStatus;
		this.chatStatus = chatStatus;
		this.stuProfile = stuProfile;
	}


	public int getChatListNum() {
		return chatListNum;
	}

	public void setChatListNum(int chatListNum) {
		this.chatListNum = chatListNum;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getFromId() {
		return fromId;
	}

	public void setFromId(String fromId) {
		this.fromId = fromId;
	}

	public String getFromName() {
		return fromName;
	}

	public void setFromName(String fromName) {
		this.fromName = fromName;
	}

	public String getToId() {
		return toId;
	}

	public void setToId(String toId) {
		this.toId = toId;
	}

	public String getToName() {
		return toName;
	}

	public void setToName(String toName) {
		this.toName = toName;
	}

	public Date getLastChatTime() {
		return lastChatTime;
	}

	public void setLastChatTime(Date lastChatTime) {
		this.lastChatTime = lastChatTime;
	}

	public String getLastChatContent() {
		return lastChatContent;
	}

	public void setLastChatContent(String lastChatContent) {
		this.lastChatContent = lastChatContent;
	}

	public String getReadStatus() {
		return readStatus;
	}

	public void setReadStatus(String readStatus) {
		this.readStatus = readStatus;
	}

	public String getChatStatus() {
		return chatStatus;
	}

	public void setChatStatus(String chatStatus) {
		this.chatStatus = chatStatus;
	}
	
	

	public String getStuProfile() {
		return stuProfile;
	}


	public void setStuProfile(String stuProfile) {
		this.stuProfile = stuProfile;
	}


	@Override
	public String toString() {
		return "ChatList [chatListNum=" + chatListNum + ", courseNum=" + courseNum + ", fromId=" + fromId
				+ ", fromName=" + fromName + ", toId=" + toId + ", toName=" + toName + ", lastChatTime=" + lastChatTime
				+ ", lastChatContent=" + lastChatContent + ", readStatus=" + readStatus + ", chatStatus=" + chatStatus
				+ ", stuProfile=" + stuProfile + "]";
	}



	
	
	
	

}
