package itwillbs.p2c3.class_will.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.MainMapper;

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

	
	
	
	
		

	
	
	
	
	
}
