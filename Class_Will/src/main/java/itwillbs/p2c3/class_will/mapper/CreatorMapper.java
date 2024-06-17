package itwillbs.p2c3.class_will.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CreatorMapper {
	
	int createrClassRegPro(Map<String, Object> map);

}
