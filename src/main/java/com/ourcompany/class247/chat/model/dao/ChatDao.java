package com.ourcompany.class247.chat.model.dao;

import java.util.ArrayList;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.chat.model.vo.Chat;

@Repository
public class ChatDao {
	
	@Inject
	private SqlSessionTemplate sqlSession;
	
	public void sendMsg(Chat chat) {
		System.out.println(chat + "디비에 저장!");
		
		sqlSession.insert("chatMapper.insertMessage", chat);
	}

	public ArrayList<Chat> selectChatList(int roomId) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectChatList", roomId);
	
	}

}
