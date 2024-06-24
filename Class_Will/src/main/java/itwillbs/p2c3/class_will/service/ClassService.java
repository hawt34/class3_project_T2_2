package itwillbs.p2c3.class_will.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.ClassMapper;

@Service
public class ClassService {
	
	@Autowired
	private ClassMapper mapper;
	public Map<String, List<Map<String, Object>>> getCategoryData() {
		Map<String, List<Map<String, Object>>> final_list = new HashMap<String, List<Map<String,Object>>>();
		List<Map<String, Object>> bigCategory = mapper.selectBigCategoryList();
		List<Map<String, Object>> smallCategory = mapper.getListSmallCategory();
		final_list.put("bigCategory", bigCategory);
		final_list.put("smallCategory", smallCategory);
		return final_list;
	}
	// 큰 카테고리
	public List<Map<String, Object>> getBigCategoryList() {
		
		return mapper.selectBigCategoryList();
	
	}
	// 소 카테고리
	public List<Map<String, Object>> getSmallCategory(String big_category) {
		
		return mapper.getSmallCategory(big_category);
	}
	public List<Map<String, Object>> getListSmallCategory() {
		
		return mapper.getListSmallCategory();
	}
	
	// 지역 
	public List<Map<String, Object>> getCategoryLocal(){
		
		return mapper.selectCategoryLocal();
	}
	
	// 클래스 리스트
	public List<Map<String, Object>> getClassList(){
		return mapper.getClassList();
	}
	
	// class-detail
	public List<Map<String, Object>> getDetail(Map<String, Object> map){
		return mapper.getDetail(map);
	}
    public List<Map<String, String>> getSmallCategoriesByBigCategoryCode(String bigCategoryCode) {
        return mapper.selectSmallCategories(bigCategoryCode);
    }
}
