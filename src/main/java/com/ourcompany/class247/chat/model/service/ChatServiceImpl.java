package com.ourcompany.class247.chat.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.chat.model.dao.ChatDao;
import com.ourcompany.class247.chat.model.vo.Chat;

@Service("chService")
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private ChatDao chDao;

	@Override
	public void sendMsg(Chat chat) {
		chDao.sendMsg(chat);
	}

	@Override
	public ArrayList<Chat> selectChatList(int roomId) {
		return chDao.selectChatList(roomId);
	}

}
