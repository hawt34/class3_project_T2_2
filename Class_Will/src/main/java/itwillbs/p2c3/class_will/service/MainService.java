package itwillbs.p2c3.class_will.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.MainMapper;

@Service
public class MainService {
	
	@Autowired
	private MainMapper mainMapper;

	public Map<String, String> selectFieldCate() {
		
		
		return mainMapper.selectFieldCate();
	}
	
	
	
	
		

	
	
	
	
	
}
