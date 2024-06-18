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
	
	
	
	public List<Map<String, String>> getMemberList(Map<String, Object> params) {
		return adminMapper.selectMemberList(params);
	}

	public Map<String, String> getMemberInfo(Map<String, Object> params) {
		return adminMapper.selectMemberInfo(params);
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

	public List<String> getColumnDataTypes(String tableName) {
		return adminMapper.selectColumnDataTypes(tableName);
	}

	public List<Map<String, String>> getClassList() {
		return adminMapper.selectClassList();
	}

	public Map<String, String> getClassInfo(String class_code) {
		return adminMapper.selectClassInfo(class_code);
	}

	public Integer getCommonCode(String code_value) {
		return adminMapper.selectCommonCode(code_value);
	}

	public int getCommon2Code(int common1_code, String type) {
		return adminMapper.selectCommon2Code(common1_code, type);
	}
	
	
}
