package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.ClassMapper;

@Service
public class ClassService {
	
	@Autowired
	private ClassMapper mapper;
	
	// 큰 카테고리
	public List<Map<String, Object>> getBigCategoryList() {
		
		
		
		return mapper.selectBigCategoryList();
	
	}
	
	// 지역 
	public List<Map<String, Object>> getCategoryLocal(){
		
		
		return mapper.selectCategoryLocal();
	}
}
