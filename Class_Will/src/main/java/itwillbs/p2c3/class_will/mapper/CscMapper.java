package itwillbs.p2c3.class_will.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CscMapper {
	
	Map<String, String> selectBoardDetail(Map<String, Object> params);
	
	Integer searchPaging(@Param("code") int code,@Param("searchType") String searchType);
}
