package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClassMapper {
	// 큰 카테고리
	List<Map<String, Object>> selectBigCategoryList();
	// 카테고리 지역 
	List<Map<String, Object>> selectCategoryLocal();
}
