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
	List<Map<String, Object>> selectSmallCategory(String big_Category);

	//
	List<Map<String, Object>> selectChooseBigCategory(@RequestParam("category") String category);
	
	// 카테고리 지역 
	List<Map<String, Object>> selectCategoryLocal();
	
	// 해시태그
	List<Map<String, Object>> selectHashtag();
	
	// 클래스 리스트
	List<Map<String, Object>> selectClassList();
	
	// 소 카테고리
	List<Map<String, Object>> selectListSmallCategory();
	
	// 클래스 리뷰
	List<Map<String, Object>> selectClassReview(int class_code);
	
	// 클래스 질문 
	List<Map<String, Object>> selectClassInquiry(int class_code);
	
    List<Map<String, String>> selectSmallCategories(String bigCategoryCode);
}
