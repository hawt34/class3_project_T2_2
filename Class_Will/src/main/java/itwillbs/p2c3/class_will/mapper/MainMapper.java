package itwillbs.p2c3.class_will.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {

	Map<String, String> selectFieldCate();
	
	
	
	

}
