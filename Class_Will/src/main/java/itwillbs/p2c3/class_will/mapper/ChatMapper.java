package itwillbs.p2c3.class_will.mapper;

import org.apache.ibatis.annotations.Mapper;

import itwillbs.p2c3.class_will.vo.MemberVO;

@Mapper
public interface ChatMapper {

	MemberVO selectMemberEmail(int member_code);



	
	
	
	
	

}
