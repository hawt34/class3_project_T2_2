package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AdminMapper {

	List<Map<String, String>> selectMemberList( @Param("params") Map<String, Object> params);

	Map<String, String> selectMemberInfo(String member_code);

	List<String> selectColumnNames(String tableName);
	
	List<Map<String, Object>> selectTable(String tableName);

	List<String> selectColumnDataTypes(String tableName);
	
	String selectMaxCode(@Param("tableName") String tableName);

	void insertExcelDatas(@Param("tableName") String tableName
						,@Param("rowDataList") List<Object> list
						,@Param("columnNames") List<String> columnNames
	);

	List<Map<String, String>> selectClassList();

	Map<String, String> selectClassInfo(String class_code);

	Integer selectCommonCode(String code_value);

	int selectCommon2Code(@Param("common1_code") int common1_code
						,@Param("type") String type);
	

}