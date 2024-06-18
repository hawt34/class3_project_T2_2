package itwillbs.p2c3.class_will.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.MemberMapper;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Service
public class MemberService {
	@Autowired
	private MemberMapper memberMapper;
	
	
	// 회원가입 MEMBER 테이블 INSERT
	public int insertMember(MemberVO member) {
		
		return memberMapper.insertMember(member);
	}
	
	
	
		

	
	
	
	
	
}
