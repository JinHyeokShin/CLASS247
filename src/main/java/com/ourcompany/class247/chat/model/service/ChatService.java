package com.ourcompany.class247.chat.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.chat.model.vo.Chat;

public interface ChatService {

	void sendMsg(Chat chat);

	ArrayList<Chat> selectChatList(int roomId);

}
