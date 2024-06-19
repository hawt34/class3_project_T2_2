package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	public Map<String, String> getMemberInfo(Map<String, Object> params) {
		return adminMapper.selectMemberInfo(params);
	}

	//멤버이미지 수정
	public int updateMemberImg(MemberVO member) {
		
		return myPageMapper.updateMemberImg(member);
	}
	
	
	//멤버가 작성한 리뷰들 가지고 오기 (리스트임)
	public List<Map<String, String>> getMemberReviews(Map<String, Object> params) {
		return  myPageMapper.selectMemberReview(params);
	}
	
	//멤버가 작성한 특성리뷰 1개 가지고 오기
	public Map<String, String> getReviewByCode(Map<String, Object> params) {
		
		return myPageMapper.selectReviewByCode(params);
	}

	
}
