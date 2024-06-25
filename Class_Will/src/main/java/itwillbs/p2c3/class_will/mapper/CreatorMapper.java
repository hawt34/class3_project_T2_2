package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import itwillbs.p2c3.class_will.vo.ClassTimeVO;
import itwillbs.p2c3.class_will.vo.CurriVO;

@Mapper
public interface CreatorMapper {
	
	// 클래스 등록
	void createrClassRegPro(Map<String, Object> map);
	
	// 커리큘럼 등록
	void creatorCurriInsert(@Param("params") List<CurriVO> params);
	
	// 클래스일정 등록
	int insertClassPlan(@Param("map") Map<String, Object> map
				 	  , @Param("classTimeList") List<ClassTimeVO> classTimeList);
	
	// 클래스 일정 가져오기
	List<Map<String, Object>> getSchedule(int classCode);

	// 클래스 종료된 일정 가져오기
	List<Map<String, Object>> getEndedSchedule(int classCode);
	
	// 클래스 일정에 참여자 있는지 확인
	Map<String, Object> checkSchedule(int classScheduleCode);

	// 클래스의 모든 일정에 참여자 있는지 확인
	Map<String, Object> checkAllSchedule(int classCode);

	// 클래스 일정 삭제
	int deleteSchedule(int classScheduleCode);

	// 클래스 전체 일정 삭제
	int deleteAllSchedule(int classCode);
	
	// 카테고리 대분류
	List<Map<String, String>> getCategory();
	
	// 카테고리 상세
	List<Map<String, Object>> getCategoryDetail(String big_category);

	// 해쉬태그
	List<Map<String, String>> getHashtag();

	// 등록상태
	List<Map<String, String>> getStatusList();
	
	List<Map<String, String>> getHide();
	
	// 클래스 정보 가져오기
	List<Map<String, Object>> getClassInfo();

	// 등록완료된 클래스 정보 가져오기
	List<Map<String, Object>> getCertifiedClassInfo();
	
	// 상태에 따른 클래스 리스트
	List<Map<String, Object>> getClassStatusInfo(int status);
	
}
