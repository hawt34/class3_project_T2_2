package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import itwillbs.p2c3.class_will.vo.MemberVO;

@Mapper
public interface MyPageMapper {

	int updateMemberImg(MemberVO member);

	List<Map<String, String>> selectMemberReview(int member_code);

	Map<String, String> selectReviewByCode(String reviewCode);

	int updateReview(Map<String, String> formData);

	int deleteReview(String class_review_code);
	
}
