package itwillbs.p2c3.class_will.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import itwillbs.p2c3.class_will.VO.ArrayData;
import itwillbs.p2c3.class_will.mapper.CreatorMapper;

@Service
public class CreatorService {
	@Autowired
	private CreatorMapper creatorMapper;
	
	 private Gson gson = new Gson();  // Gson 객체 생성
	 
	 public int createrClassRegPro(Map<String, Object> map) {
		 
		 String jsonArray = gson.toJson(map.get("selectedItems"));  // 배열을 JSON 문자열로 변환
		 ArrayData arrayData = new ArrayData();
		 arrayData.setJsonArrays(jsonArray);
		 map.put("selectedItems", arrayData);
		 
		 return creatorMapper.createrClassRegPro(map);
	 }
	 
	
	

}
