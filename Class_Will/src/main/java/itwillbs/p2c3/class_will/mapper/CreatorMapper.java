package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CreatorMapper {
	
	// 클래스 등록
	int createrClassRegPro(Map<String, Object> map);
	
	// 카테고리 대분류
	List<Map<String, String>> getCategory();
	
	// 클래스 구분
	public List<Map<String, String>> getSort();
	
	// 카테고리 상세
	List<Map<String, String>> getCategoryDetail(String big_category);

}
