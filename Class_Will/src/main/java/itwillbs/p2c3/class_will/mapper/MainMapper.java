package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {

	Map<String, String> selectFieldCate();

	List<Map<String, Object>> selectBigCategory();

	List<Map<String, Object>> selectSmallCategory();
	
	
	
	

}
