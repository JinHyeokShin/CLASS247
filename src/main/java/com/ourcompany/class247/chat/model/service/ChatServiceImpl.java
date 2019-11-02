package com.ourcompany.class247.chat.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.chat.model.dao.ChatDao;
import com.ourcompany.class247.chat.model.vo.Chat;
import com.ourcompany.class247.chat.model.vo.ChatList;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.member.model.vo.Member;

@Service("chService")
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private ChatDao chDao;

	/**
	 * 전송된 메세지 DB에 저장
	 */
	@Override
	public void sendMsg(Chat chat) {
		chDao.sendMsg(chat);
	}

	/** 채팅 상세 페이지, 대화내용 불러오기
	 *
	 */
	@Override
	public ArrayList<Chat> selectChatDetail(int roomId) {
		return chDao.selectChatDetail(roomId);
	}

	/** 채팅방이 존재하는지 확인 
	 *
	 */
	@Override
	public int getChatRoomExist(ChatList chatList) {
		return chDao.getChatRoomExist(chatList);
	}

	/** 채팅 방번호 알아오기 
	 *
	 */
	@Override
	public int selectRoomdId(ChatList chatList) {
		return chDao.selectRoomId(chatList);
	}
	
	/**
	 * 채팅방 만들기 
	 */
	@Override
	public int insertChatRoom(ChatList chatList) {
		return chDao.insertChatRoom(chatList);
	}

	/** 채팅리스트 불러오기 
	 *
	 */
	@Override
	public ArrayList<ChatList> selectChatList(String creNum) {
		return chDao.selectChatList(creNum);
	}

	@Override
	public Member selectStuProfile(int memNum) {
		return chDao.selectStuProfile(memNum);
	}

	@Override
	public Creator selectCreator(int creNum) {
		return chDao.selectCreator(creNum);
	}

}
