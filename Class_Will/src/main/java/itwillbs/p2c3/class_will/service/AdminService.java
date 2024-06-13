package itwillbs.p2c3.class_will.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.AdminMapper;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	
	public List<Map<String, String>> getMemberList(String type) {
		return adminMapper.selectMemberList(type);
	}

	public Map<String, String> getMemberInfo(String member_code) {
		return adminMapper.selectMemberInfo(member_code);
	}
	
	
	 public List<String> getColumnNames(String tableName) {
	      return adminMapper.selectColumnNames(tableName);
	    }

//    public List<Map<String, Object>> getCurrentPageData(String tableName) {
//        String sql = "SELECT * FROM " + tableName + " LIMIT 10"; // 예시로 현재 페이지 데이터 가져오기
//        return jdbcTemplate.queryForList(sql);
//    }

    public List<Map<String, Object>> getAllData(String tableName) {
        return adminMapper.selectTable(tableName);
    }
	
	
}
