package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.ChatMapper;
import itwillbs.p2c3.class_will.vo.ChatMessageVO;
import itwillbs.p2c3.class_will.vo.ChatRoomVO;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Service
public class ChatService {
	
	@Autowired
	private ChatMapper chatMapper;

	public MemberVO selectMemberInfo(String member_email) {
		return chatMapper.selectMemberInfo(member_email);
	}

	public List<Map<String, Object>> getRoomList(String member_email) {
		return chatMapper.selectRoomList(member_email);
	}

	public ChatRoomVO selectChatRoom(String sender_email, String receiver_email) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertChatRoom(ChatRoomVO newChatRoom) {
		chatMapper.insertChatRoom(newChatRoom);
	}

	public void insertChatMessage(ChatMessageVO chatMessage) {
		chatMapper.insertChatMessage(chatMessage);
	}
	
	
		

	
	
	
	
	
}
