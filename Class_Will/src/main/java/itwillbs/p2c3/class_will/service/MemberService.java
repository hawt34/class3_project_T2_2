package itwillbs.p2c3.class_will.service;

import java.util.Map;

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

	// 로그인 멤버 정보 조회
	public MemberVO selectMember(MemberVO member) {
		return memberMapper.selectMember(member);
	}
	
	
	// 비밀번호 변경 
	public boolean updatePassword(MemberVO member) {
		if(memberMapper.updatePassword(member)) {
			return true;
		} else {
			return false;
			
		}
		
	}

	public boolean updateMemberStatus(MemberVO member) {
		if(memberMapper.updateMemberStatus(member)) {
			return true;
		} else {
			return false;
			
		}
	}

	public Map<String, String> selectBankInfo(String member_email) {
		return memberMapper.selectBankInfo(member_email);
	}
	
	
	
		

	
	
	
	
	
}
