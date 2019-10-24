package com.ourcompany.class247.chat.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ourcompany.class247.chat.model.vo.Chat;

@Controller
public class ChatController {
	
	@ResponseBody
	@RequestMapping("send.do")
	public String send(HttpServletRequest request) {
		String msg = request.getParameter("msg");
		Chat chat = new Chat();
		String[] message = msg.split("->");
		String fromId = message[0];
		String content = message[1];
		String toId = message[2];
		chat.setFromId(fromId);
		chat.setToId(toId);
		chat.setChatContent(content);
		System.out.println("몰라~ ㅏㄹ수가없다 " + chat);
		return "success";
	}

}
