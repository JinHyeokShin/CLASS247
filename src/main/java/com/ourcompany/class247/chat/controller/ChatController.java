package com.ourcompany.class247.chat.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.ourcompany.class247.chat.model.service.ChatService;
import com.ourcompany.class247.chat.model.vo.Chat;

@Controller
public class ChatController {
	
	@Autowired
	private ChatService chService;
	
	
	
	@ResponseBody
	@RequestMapping("getChatList.do")
	public void getChatList(@RequestParam(value="roomId") int roomId, HttpServletResponse response) throws JsonIOException, IOException {
		System.out.println("에이작스에 입성" + roomId);
		ArrayList<Chat> list = chService.selectChatList(roomId);
		
		for(Chat c : list) {
			System.out.println(c);
		}
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson(); 
		gson.toJson(list, response.getWriter());
	}

}
