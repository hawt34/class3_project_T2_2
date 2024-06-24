package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {


	List<Map<String, Object>> selectBigCategory();

	List<Map<String, Object>> selectSmallCategory();

	List<Map<String, Object>> selectLocalCate();
	
	
	
	

}
