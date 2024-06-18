package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.AdminMapper;
import itwillbs.p2c3.class_will.mapper.MyPageMapper;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Service
public class MyPageService {
	@Autowired
	private MyPageMapper myPageMapper;
	
	
	@Autowired
	private AdminMapper adminMapper;
	
		


	public Map<String, String> getMemberInfo(String member_code) {
		return adminMapper.selectMemberInfo(member_code);
	}



	//멤버이미지 수정
	public int updateMemberImg(MemberVO member) {
		
		return myPageMapper.updateMemberImg(member);
	}
	
	
	
	
	
}
