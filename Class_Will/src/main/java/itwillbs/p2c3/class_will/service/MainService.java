package itwillbs.p2c3.class_will.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import itwillbs.p2c3.class_will.mapper.MainMapper;
import kotlin.collections.ArrayDeque;

@Service
public class MainService {
	
	@Autowired
	private MainMapper mainMapper;

	public Map<String, List<Map<String, Object>>> selectFieldCate() {
		
		Map<String, List<Map<String, Object>>> feildCateList = new HashMap<String, List<Map<String,Object>>>();
		List<Map<String, Object>> bigCategory = mainMapper.selectBigCategory();
		List<Map<String, Object>> smallCategory = mainMapper.selectSmallCategory();
		feildCateList.put("bigCategory", bigCategory);
		feildCateList.put("smallCategory", smallCategory);
		
		return feildCateList;
	}

	public List<Map<String, Object>> selectLocalCate() {
		
		return mainMapper.selectLocalCate();
	}
	
	
//	@Transactional
//	public List<Map<String, Object>> checkKeyword(String keyword, String searchDateTime) {
//		
//		mainMapper.insertKeyword(keyword, searchDateTime);
//		System.out.println("checkKeyword - insertKeyword 성공");
//		
//		List<Map<String, Object>> searchClassList = mainMapper.selectKeyword(keyword);
//		
//		return searchClassList;
//	}
	public void checkKeyword(String keyword, String searchDateTime) {
		
		if(mainMapper.insertKeyword(keyword, searchDateTime)) {
			System.out.println("checkKeyword - insertKeyword 성공");
			
		}
		
		
	}
	
	
	@Transactional
	public void insertVisitIp(String ip, String visitDate) {
		
		
		Map<String, String> map = mainMapper.selectVisitIp(ip, visitDate);
		
		if(map == null) {
			mainMapper.insertVisitIp(ip, visitDate);
			System.out.println(visitDate + "오늘의 방문자수 +1");
		}
		System.out.println("[ " + ip + " ] : [ " + visitDate + "] 기존 방문자");
		
		
	}
	
	@Transactional
	public List<Map<String, Object>> selectTop10() {
		List<Map<String, Object>> classList = mainMapper.selectTop10Class();
		List<Map<String, Object>> localList = mainMapper.selectTop10Local();
		
		for(Map<String, Object> contents : classList) {
			for(Map<String, Object> local : localList) {
				if(contents.get("class_code") == local.get("class_code")) {
					contents.put("local_name", local.get("local_name"));
				}
			}
			System.out.println("contents : " + contents);
		}
		
		return classList;
	}
	
	@Transactional
	public List<Map<String, Object>> selectNewClass() {
		List<Map<String, Object>> classList = mainMapper.selectNewClass();
		List<Map<String, Object>> localList = mainMapper.selectNewLocal();
		
		for(Map<String, Object> contents : classList) {
			for(Map<String, Object> local : localList) {
				if(contents.get("class_code") == local.get("class_code")) {
					contents.put("local_name", local.get("local_name"));
				}
			}
			System.out.println("contents : " + contents);
		}
		
		return classList;
	}

	
	
	
	
		

	
	
	
	
	
}
