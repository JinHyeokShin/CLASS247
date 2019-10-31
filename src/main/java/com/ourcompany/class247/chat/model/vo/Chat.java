package com.ourcompany.class247.chat.model.vo;

import java.sql.Date;

import com.google.gson.Gson;

public class Chat {
	
	private int chatNum;
	private int chatroomNum;
	private String fromId;
	private String fromName; 
	private String toId;
	private String toName;
	private String chatContent; 
	private Date chatTime;
	
	public Chat() {}
	
	
	public Chat(int chatNum, int chatroomNum, String fromId, String fromName, String toId, String toName,
			String chatContent, Date chatTime) {
		super();
		this.chatNum = chatNum;
		this.chatroomNum = chatroomNum;
		this.fromId = fromId;
		this.fromName = fromName;
		this.toId = toId;
		this.toName = toName;
		this.chatContent = chatContent;
		this.chatTime = chatTime;
	}


	public int getChatNum() {
		return chatNum;
	}


	public void setChatNum(int chatNum) {
		this.chatNum = chatNum;
	}


	public int getChatroomNum() {
		return chatroomNum;
	}


	public void setChatroomNum(int chatroomNum) {
		this.chatroomNum = chatroomNum;
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


	public String getChatContent() {
		return chatContent;
	}


	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}


	public Date getChatTime() {
		return chatTime;
	}


	public void setChatTime(Date chatTime) {
		this.chatTime = chatTime;
	}
	
	
	public static Chat convertMessage(String source) {
		Chat message = new Chat();
		Gson gson = new Gson();
		message = gson.fromJson(source,  Chat.class);
		return message;
	}


	@Override
	public String toString() {
		return "Chat [chatNum=" + chatNum + ", chatroomNum=" + chatroomNum + ", fromId=" + fromId + ", fromName="
				+ fromName + ", toId=" + toId + ", toName=" + toName + ", chatContent=" + chatContent + ", chatTime="
				+ chatTime + "]";
	}
	
	
	
	
	
	
	

}
