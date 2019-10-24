package com.ourcompany.class247.chat.model.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.chat.model.vo.Chat;

@Repository
public class ChatDao {
	
	@Inject
	private SqlSessionTemplate sqlSession;
	
	public void sendMsg(String payload) {
		Chat chat = new Chat();
		String[] msg = payload.split("->");
		String fromId = msg[0];
		String content = msg[1];
		String toId = msg[2];
		System.out.println(content + ": content");
		chat.setFromId(fromId);
		chat.setToId(toId);
		chat.setChatContent(content);
		System.out.println(chat);
		
		sqlSession.insert("chatMapper.insertMessage", chat);
	}

}
