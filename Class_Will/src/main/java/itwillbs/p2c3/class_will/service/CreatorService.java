package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import itwillbs.p2c3.class_will.mapper.CreatorMapper;

@Service
public class CreatorService {
	@Autowired
	private CreatorMapper creatorMapper;
	
	// 카테고리 등록
	public int createrClassRegPro(Map<String, Object> map) {
		return creatorMapper.createrClassRegPro(map);
	}
 
	// 카테고리 대분류 가져오기
	public List<Map<String, String>> getCategory(){
		return creatorMapper.getCategory();
	}
	 
	// 카테고리 구분 가져오기 
	public List<Map<String, String>> getSort(){
		return creatorMapper.getSort();
	}
	
	// 카테고리 상세
	public List<Map<String, String>> getCategoryDetail(String big_category) {
		return creatorMapper.getCategoryDetail(big_category);
	}
	 
	// 해쉬태그 가져오기 
	public List<Map<String, String>> getHashtag(){
		return creatorMapper.getHashtag();
	}
	
	

}
