package com.ourcompany.class247.chat.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.ourcompany.class247.chat.model.service.ChatService;
import com.ourcompany.class247.chat.model.vo.Chat;
import com.ourcompany.class247.chat.model.vo.ChatList;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.member.model.vo.Member;

@Controller
public class ChatController {
	
	@Autowired
	private ChatService chService;
	
	/** 채팅 상세보기 페이지로 이동하기 
	 * @param roomId
	 * @param mv
	 * @return
	 */

	 @RequestMapping("cChatDetailView.do") public ModelAndView
	 chattingView(@RequestParam(value="chatListNum") int roomId, 
			 		@RequestParam(value="fromId") int memNum, ModelAndView mv) {
		 Member student = chService.selectStuProfile(memNum);
		 System.out.println(roomId + "    :  " + memNum);
		 mv.addObject("memNum", memNum).addObject("student", student);
		 mv.addObject("roomId", roomId).setViewName("creator/cChat"); 
		 return mv; 
	 }

	@RequestMapping("cChattingView.do")
	public ModelAndView chattingView(HttpServletRequest request, ModelAndView mv) {
		Creator creator = (Creator)request.getSession().getAttribute("creator");
		
		if(creator != null) {
			String creNum = "C" + Integer.toString(creator.getCreNum());
			ArrayList<ChatList> chatList = chService.selectChatList(creNum);
			System.out.println(creNum);
			for (ChatList ch : chatList) {
				System.out.println(ch);
			}
			mv.addObject("chatList", chatList);
			
		}
		mv.setViewName("creator/cChatList");
		return mv;
	}
	
	
	
	/** roomId로 대화내용 불러오기 
	 * @param roomId
	 * @param response
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("getChatList.do")
	public void getChatList(@RequestParam(value="roomId") int roomId, HttpServletResponse response) throws JsonIOException, IOException {
		System.out.println("에이작스에 입성" + roomId);
		ArrayList<Chat> list = chService.selectChatDetail(roomId);
		for(Chat c : list) {
			System.out.println(c);
		}
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson(); 
		gson.toJson(list, response.getWriter());
	}
	
	
	/** 채팅방 만들기 
	 * @param courseNum
	 * @param creNum
	 * @param request
	 * @param mv
	 * @return
	 */
	@RequestMapping("openChat.do")
	public ModelAndView insertChatRoom(@RequestParam(value="courseNum") int courseNum, 
								@RequestParam(value="creNum") int creNum, HttpServletRequest request, ModelAndView mv) {
		 
		String fromId = Integer.toString(((Member)request.getSession().getAttribute("loginUser")).getMemNum());
		String toId = "C" + Integer.toString(creNum);
		
		ChatList chatList = new ChatList(courseNum, fromId, toId);
		
		int result = chService.getChatRoomExist(chatList);
		if(result > 0) {
			int roomId = chService.selectRoomdId(chatList);
			System.out.println("채팅방 번호 : " + roomId);
			mv.addObject("creNum", toId);
			mv.addObject("mgs", "존재하는 채팅 창에 오신 것을 환영합니다!");
			mv.addObject("roomId", roomId);
			mv.setViewName("creator/userChatDetail");
		} else {
			int result1 = chService.insertChatRoom(chatList);
			int roomId = chService.selectRoomdId(chatList);
			System.out.println("채팅방 번호 : " + roomId);
			mv.addObject("creNum", toId);
			mv.addObject("msg", "새로운 채팅방에 입장하셨습니다!");
			mv.addObject("roomId", roomId);
			mv.setViewName("creator/userChatDetail");
		}
		
		Creator c = chService.selectCreator(creNum);
		mv.addObject("c", c);
		return mv;
	}
	
	@RequestMapping("userChattingView.do")
	public ModelAndView userChattingView(HttpServletRequest request, ModelAndView mv) {
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");

		ArrayList<ChatList> chatList = chService.selectUserChatList(loginUser.getMemNum());
		System.out.println("memID : " + loginUser.getMemNum());
			for (ChatList ch : chatList) {
				System.out.println(ch);				
		}
		mv.addObject("chatList", chatList);
		mv.setViewName("creator/userChatList");

		return mv;
	}
	

	@RequestMapping("userChatDetail.do")
	public ModelAndView userChatDetail(ModelAndView mv, @RequestParam(value="chatListNum") int roomId, @RequestParam(value="creNum") String creNum) {
		
		int num = Integer.parseInt(creNum.substring(1));
		Creator c = chService.selectCreator(num);
		mv.addObject("c", c);
		mv.addObject("roomId", roomId);
		mv.setViewName("creator/userChatDetail");
		return mv;
	}
	
	
	@RequestMapping("deleteChat.do")
	public ModelAndView deleteChat(@RequestParam(value="chatListNum") int chatListNum, ModelAndView mv) {
		int result = chService.deleteChat(chatListNum); 
		if(result > 0 ) {
			mv.addObject("msg", "채팅방을 나갔습니다.");
			mv.setViewName("redirect:userChattingView.do");
		} else { //실패
			mv.addObject("msg", "채팅방 나가기 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	
		@RequestMapping("deleteCreChat.do")
		public ModelAndView deleteCreChat(@RequestParam(value="chatListNum") int chatListNum, ModelAndView mv) {
			int result = chService.deleteChat(chatListNum); 
			if(result > 0 ) {
				mv.addObject("msg", "채팅방을 나갔습니다.");
				mv.setViewName("redirect:cChattingView.do");
			} else { //실패
				mv.addObject("msg", "채팅방 나가기 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
		}
}
	

