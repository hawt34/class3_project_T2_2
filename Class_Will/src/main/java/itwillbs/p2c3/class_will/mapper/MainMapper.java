package itwillbs.p2c3.class_will.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MainMapper {


	List<Map<String, Object>> selectBigCategory();

	List<Map<String, Object>> selectSmallCategory();

	List<Map<String, Object>> selectLocalCate();

	boolean insertKeyword(@Param("keyword") String keyword, @Param("searchDateTime") String searchDateTime);

	List<Map<String, Object>> selectKeyword(@Param("keyword") String keyword);

	void insertVisitIp(@Param("ip")String ip, @Param("visitDate") String visitDate);

	Map<String, String> selectVisitIp(@Param("ip")String ip, @Param("visitDate") String visitDate);

	List<Map<String, Object>> selectTop10Class();
	
	List<Map<String, Object>> selectTop10Local();

	List<Map<String, Object>> selectNewClass();

	List<Map<String, Object>> selectNewLocal();
	
	
	
	
	

}
