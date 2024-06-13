package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {

	List<Map<String, String>> selectMemberList(String type);

	Map<String, String> selectMemberInfo(String member_code);

	List<String> selectColumnNames(String tableName);
	
	List<Map<String, Object>> selectTable(String tableName);
	
}
