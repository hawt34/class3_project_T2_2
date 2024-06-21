package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import itwillbs.p2c3.class_will.mapper.CreatorMapper;
import itwillbs.p2c3.class_will.vo.ClassTimeVO;
import itwillbs.p2c3.class_will.vo.CurriVO;

@Service
public class CreatorService {
	@Autowired
	private CreatorMapper creatorMapper;
	
	// 클래스 등록
	public void createrClassRegPro(Map<String, Object> map, List<CurriVO> params) {
		creatorMapper.createrClassRegPro(map);
		System.out.println(">>>>>>>>params: " + params);
		creatorMapper.creatorCurriInsert(params);
	}
	
	// 클래스 일정 등록
	public int insertClassPlan(Map<String, Object> map, List<ClassTimeVO> classTime) {
		return creatorMapper.insertClassPlan(map, classTime);
	}
	
	// 클래스 일정 가져오기
	public List<Map<String, Object>> getSchedule(int classCode) {
		return creatorMapper.getSchedule(classCode);
	}

	// 클래스 일정 삭제
	public int deleteSchedule(int classCode) {
		return creatorMapper.deleteSchedule(classCode);
	}
 
	// 카테고리 대분류 가져오기
	public List<Map<String, String>> getCategory(){
		return creatorMapper.getCategory();
	}
	 
	// 카테고리 구분 가져오기 
//	public List<Map<String, String>> getSort(){
//		return creatorMapper.getSort();
//	}
	
	// 카테고리 상세
	public List<Map<String, Object>> getCategoryDetail(String big_category) {
		return creatorMapper.getCategoryDetail(big_category);
	}
	 
	// 해쉬태그 가져오기 
	public List<Map<String, String>> getHashtag(){
		return creatorMapper.getHashtag();
	}

	public List<Map<String, String>> getHide(){
		return creatorMapper.getHide();
	}
	
	// 클래스정보 가져오기
	public List<Map<String, Object>> getClassInfo(){
		return creatorMapper.getClassInfo();
	}
	
	

}
