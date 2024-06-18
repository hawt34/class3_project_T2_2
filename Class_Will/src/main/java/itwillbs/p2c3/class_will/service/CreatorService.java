package itwillbs.p2c3.class_will.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import itwillbs.p2c3.class_will.mapper.CreatorMapper;

@Service
public class CreatorService {
	@Autowired
	private CreatorMapper creatorMapper;
	
	 public int createrClassRegPro(Map<String, Object> map) {
		 
		 return creatorMapper.createrClassRegPro(map);
	 }
	 
	
	

}
