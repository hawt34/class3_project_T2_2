package itwillbs.p2c3.class_will.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import itwillbs.p2c3.class_will.mapper.AdminMapper;
import itwillbs.p2c3.class_will.vo.GroupedData;

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
    	List<Map<String, Object>> result = null;
    	switch (tableName) {
		case "MEMBER" :  result = adminMapper.selectTable(tableName); break;
		case "class" : result = adminMapper.selectClassList(); break;	
		}
    	return result;
    }

	public List<String> getColumnDataTypes(String tableName) {
		return adminMapper.selectColumnDataTypes(tableName);
	}

	public List<Map<String, Object>> getClassList() {
		return adminMapper.selectClassList();
	}

	public Map<String, String> getClassInfo(String class_code) {
		return adminMapper.selectClassInfo(class_code);
	}

	public String getCommonCode(String code_value) {
		return adminMapper.selectCommonCode(code_value);
	}

	public int getCommon2Code(String common1_code, String type) {
		return adminMapper.selectCommon2Code(common1_code, type);
	}

	public Map<String, List<Map<String, Object>>> getCategoryData() {
		Map<String, List<Map<String, Object>>> final_list = new HashMap<String, List<Map<String,Object>>>();
		List<Map<String, Object>> bigCategory = adminMapper.selectBigCategory();
		List<Map<String, Object>> smallCategory = adminMapper.selectSmallCategory();
		final_list.put("bigCategory", bigCategory);
		final_list.put("smallCategory", smallCategory);
		return final_list;
	}

	public void updateCategoryData(Map<String, Object> rowMap) {
		adminMapper.updatedCategoryData(rowMap);
	}

	public void insertCategoryData(Map<String, Object> rowMap) {
		adminMapper.insertCategoryData(rowMap);
	}

	public int getMaxCommon3Code(Integer common2_code) {
		return adminMapper.selectMaxCommon3Code(common2_code);
	}

	public void deleteCategoryData(Map<String, Object> rowMap) {
		adminMapper.deleteCategoryData(rowMap);
	}

	public boolean insertNotice(Map<String, Object> map) {
		return adminMapper.insertNotice(map) > 0 ? true : false;
	}
	
	
}
