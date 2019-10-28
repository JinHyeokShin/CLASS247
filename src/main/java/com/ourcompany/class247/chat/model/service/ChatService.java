package com.ourcompany.class247.chat.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.chat.model.vo.Chat;
import com.ourcompany.class247.chat.model.vo.ChatList;

public interface ChatService {

	//전송된 메세지 DB에 저장
	void sendMsg(Chat chat);

	// 채팅 상세 페이지, 대화내용 불러오기
	ArrayList<Chat> selectChatDetail(int roomId);

	//채팅방이 존재하는지 확인 
	int getChatRoomExist(ChatList chatList);

	//채팅 방번호 알아오기 
	int selectRoomdId(ChatList chatList);

	// 채팅방 만들기 
	int insertChatRoom(ChatList chatList);

	// 크리에이터 채팅 리스트 불러오기 
	ArrayList<ChatList> selectChatList(String creNum);

}
