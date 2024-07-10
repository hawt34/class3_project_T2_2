package itwillbs.p2c3.class_will.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.ChatMapper;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Service
public class ChatService {
	
	@Autowired
	private ChatMapper chatMapper;

	public MemberVO selectMemberEmail(int member_code) {
		return chatMapper.selectMemberEmail(member_code);
	}
	
	
		

	
	
	
	
	
}
