package itwillbs.p2c3.class_will.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import itwillbs.p2c3.class_will.service.ChatService;
import itwillbs.p2c3.class_will.vo.MemberVO;

public class ChatController {
	
	@Autowired 
	private HttpSession session;
	
	@Autowired
	private ChatService chatservice;
	
	
	@GetMapping("user-chat-list")
	public String userChatList(MemberVO member, Model model) {
		
		
		
		
		model.addAttribute("member", member);
		return "user_chat/user_chat_list";
		
	} // userChatList()
	
	@GetMapping("user-chat-room")
	public String userChatRoom(MemberVO member, Model model) {
		
		
		model.addAttribute("member", member);
		return "user_chat/user_chat_room";
		
	} // userChatList()
	
	
	
	
	
}
