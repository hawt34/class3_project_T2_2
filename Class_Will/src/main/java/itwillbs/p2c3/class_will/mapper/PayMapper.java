package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PayMapper {
	
	//class info 가져오기
	Map<String, Object> selectClassInfo(Map<String, Object> map);
	
	//class schedule 정보 가져오기
	List<Map<String, Object>> selectSchedule(int i);
	
	
	//date로 클래스 스케쥴 타임 가져오기
	List<Map<String, Object>> selectScheduleTime(@Param("date")String date,
												 @Param("class_code")int parsedClass_code);
	
	//pay관련 모든 정보 가져오기
	Map<String, String> selectPayInfo(Map<String, String> map);
	

	
}
