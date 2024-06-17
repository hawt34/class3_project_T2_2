package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PayMapper {

	//class schedule 정보 가져오기
	List<Map<String, Object>> selectSchedule(int i);
	
	Map<String, String> selectClassInfo(Map<String, Object> map);
	

	
}
