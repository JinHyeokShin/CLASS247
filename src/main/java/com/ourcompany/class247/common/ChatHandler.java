package com.ourcompany.class247.common;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.ourcompany.class247.chat.model.service.ChatService;
import com.ourcompany.class247.chat.model.vo.Chat;



public class ChatHandler extends TextWebSocketHandler{

private static Logger logger = LoggerFactory.getLogger(ChatHandler.class);


    

    private static List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
    
    @Autowired
    private ChatService chService;

    /**

     * 클라이언트 연결 이후에 실행되는 메소드

     */

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
    	
    	
       
        sessionList.add(session);

        logger.info("{} 연결됨", session.getId());
    }

    /**

     * 클라이언트가 웹소켓서버로 메시지를 전송했을 때 실행되는 메소드

     */

    @Override

    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
     
    	if((message.getPayload().split("->")[0]).equals("채팅방입장")) {
    		
    		logger.info("{}님 입장!", session.getId());
    		
    		
    		
    	} else {
    		
    		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
    		Chat chat = new Chat();
    		String[] msg = (message.getPayload()).split("->");
    		String fromId = msg[0];
    		String content = msg[1];
    		String toId = msg[2];
    		int chatRoomNum = Integer.parseInt(msg[3]);
    		chat.setChatContent(content);
    		chat.setFromId(fromId);
    		chat.setToId(toId);
    		chat.setChatroomNum(chatRoomNum);
    		chService.sendMsg(chat);
    		
    		
    		
    		for(WebSocketSession sess : sessionList){
    			if(session.getAttributes().get("bId") == null) {   // 방에 안들어왔으면
    				if(session.getId().equals(sess.getId())) {      // 보낸사람 id와 보내야되는 사람 id 가 같을때
    					sess.sendMessage(new TextMessage("나:"+ content));   // 나 : 메세지 내용 출력
    				}else {                                 // 다를때
    					sess.sendMessage(new TextMessage("상대방:"+ content));// 아이디 : 메세지 내용 출력              
    				}
    				
    			}else {                                    // 방에 들어왔으면
    				if(session.getAttributes().get("bId") == sess.getAttributes().get("bId")) {   // 보낸사람 bId와 보내야되는사람 bId가 같을때
    					if(session.getId().equals(sess.getId())) {
    						sess.sendMessage(new TextMessage("나:"+ message.getPayload()));   
    					}else {
    						sess.sendMessage(new TextMessage("상대방:"+ message.getPayload())); 
    					}
    				}
    				
    			}
    			
    		}
    		
    	}


    }
    

    /**

     * 클라이언트가 연결을 끊었을 때 실행되는 메소드

     */

    @Override

    public void afterConnectionClosed(WebSocketSession session,

            CloseStatus status) throws Exception {
        sessionList.remove(session);
        
        logger.info("{} 연결 끊김", session.getId());

    }

}