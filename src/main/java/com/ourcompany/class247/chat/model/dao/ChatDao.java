package com.ourcompany.class247.chat.model.dao;

import java.util.ArrayList;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.chat.model.vo.Chat;
import com.ourcompany.class247.chat.model.vo.ChatList;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.member.model.vo.Member;

@Repository
public class ChatDao {
	
	@Inject
	private SqlSessionTemplate sqlSession;
	
	public void sendMsg(Chat chat) {
		System.out.println(chat + "디비에 저장!");
		
		sqlSession.insert("chatMapper.insertMessage", chat);
	}

	public ArrayList<Chat> selectChatDetail(int roomId) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectChatDetail", roomId);
	
	}

	/** 채팅방이 존재하는지 확인 
	 * @param chatList
	 * @return
	 */
	public int getChatRoomExist(ChatList chatList) {
		return sqlSession.selectOne("chatMapper.getChatRoomExist", chatList);
	}

	/** 채팅 방번호 알아오기 
	 * @param chatList
	 * @return
	 */
	public int selectRoomId(ChatList chatList) {
		return sqlSession.selectOne("chatMapper.selectRoomId", chatList);
	}
 
	/** 채팅방 만들기 
	 * @param chatList
	 * @return
	 */
	public int insertChatRoom(ChatList chatList) {
		return sqlSession.insert("chatMapper.insertChatRoom", chatList);
	}

	public ArrayList<ChatList> selectChatList(String creNum) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectChatList", creNum);
	}

	public Member selectStuProfile(int memNum) {
		return sqlSession.selectOne("chatMapper.selectStuProfile", memNum);
	}

	public Creator selectCreator(int creNum) {
		return sqlSession.selectOne("chatMapper.selectCreator", creNum);
	}

	//사용자 입장, 채팅 리스트 불러오기 
	public ArrayList<ChatList> selectUserChatList(int memNum) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectUserChatList", memNum);
	}

	public int deleteChat(int chatListNum) {
		return sqlSession.update("chatMapper.deleteChat", chatListNum);
	}

}
