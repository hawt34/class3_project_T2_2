package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import itwillbs.p2c3.class_will.vo.MemberVO;

@Mapper
public interface MyPageMapper {

	int updateMemberImg(MemberVO member);

	List<Map<String, String>> selectMemberReview(Map<String, Object> params);

	Map<String, String> selectReviewByCode(Map<String, Object> params);
	
}
