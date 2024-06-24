package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import javax.swing.text.StyleContext.SmallAttributeSet;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

@Mapper
public interface ClassMapper {
	// 큰 카테고리
	List<Map<String, Object>> selectBigCategoryList();
	
	// 소 카테고리
	List<Map<String, Object>> getSmallCategory(String big_Category);
	// 소 카테고리
	List<Map<String, Object>> getListSmallCategory();
	
	// 카테고리 지역 
	List<Map<String, Object>> selectCategoryLocal();
	
	// 클래스 리스트
	List<Map<String, Object>> getClassList();
	
    List<Map<String, String>> selectSmallCategories(String bigCategoryCode);
}
