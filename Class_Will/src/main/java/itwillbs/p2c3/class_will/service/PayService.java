package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.PayMapper;

@Service
public class PayService {
	@Autowired
	private PayMapper payMapper;
	
	//스캐쥴 info
	public List<Map<String, Object>> getClassSchedule(int i) {
		return payMapper.selectSchedule(i);
	}
	
	public Map<String, String> getClassInfo(Map<String, Object> map) {
		return payMapper.selectClassInfo(map);
	}

	
}
