package itwillbs.p2c3.class_will.mapper;

import org.apache.ibatis.annotations.Mapper;

import itwillbs.p2c3.class_will.vo.MemberVO;

@Mapper
public interface MemberMapper {
	
	// 회원가입
	int insertMember(MemberVO member);
	
	
	// 로그인
	MemberVO selectMember(MemberVO member);

	// 비밀번호 변경
	boolean updatePassword(MemberVO member);
	
	
	
	
}
