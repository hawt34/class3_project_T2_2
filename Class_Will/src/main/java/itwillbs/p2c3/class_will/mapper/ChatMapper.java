package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import itwillbs.p2c3.class_will.vo.ChatMessageVO;
import itwillbs.p2c3.class_will.vo.ChatRoomVO;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Mapper
public interface ChatMapper {

	MemberVO selectMemberInfo(String member_email);

	List<Map<String, Object>> selectRoomList(String member_email);

	void insertChatRoom(ChatRoomVO newChatRoom);

	void insertChatMessage(ChatMessageVO chatMessage);



	
	
	
	
	

}
