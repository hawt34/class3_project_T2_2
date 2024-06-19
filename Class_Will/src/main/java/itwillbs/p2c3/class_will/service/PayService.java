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
	
	//클래스 info - select
	public Map<String, Object> getClassInfo(Map<String, Object> map) {
		return payMapper.selectClassInfo(map);
	}
	
	//스캐쥴 info
	public List<Map<String, Object>> getClassSchedule(int i) {
		return payMapper.selectSchedule(i);
	}
	
	//date로 클래스 스케쥴 타임 가져오기
	public List<Map<String, Object>> getScheduleTime(String date, int parsedClass_code) {
		return payMapper.selectScheduleTime(date, parsedClass_code);
	}

	
}
