package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AdminMapper {

	List<Map<String, String>> selectMemberList(String type);

	Map<String, String> selectMemberInfo(String member_code);

	List<String> selectColumnNames(String tableName);
	
	List<Map<String, Object>> selectTable(String tableName);

	List<String> selectColumnDataTypes(String tableName);
	
	String selectMaxCode(@Param("tableName") String tableName);

	void insertExcelDatas(@Param("tableName") String tableName
						,@Param("rowDataList") List<Object> list
						,@Param("code") String code
	);
	

}
