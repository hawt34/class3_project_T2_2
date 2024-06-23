package itwillbs.p2c3.class_will;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import itwillbs.p2c3.class_will.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	// 메인으로
	@GetMapping("main")
	public String main() {
		
		
		
		
		
		
		return "main";
	}
	
	// chackout으로
	@GetMapping("chackout")
	public String chackout() {
		return "chackout";
	}
	
	// shop으로
	@GetMapping("shop")
	public String shop() {
		return "shop";
	}
	
	// shop-detail으로
	@GetMapping("shop-detail")
	public String shopDetail() {
		return "shop-detail";
	}

	
	// top-분야 카테고리
	@ResponseBody
	@GetMapping("top-field-category")
	public String fieldCategory() {
		
	    List<Map<String, Object>> data = new ArrayList<>();
	    Map<String, List<Map<String, Object>>> fieldCateMap = mainService.selectFieldCate();
	    List<Map<String, Object>> bigCategory = fieldCateMap.get("bigCategory");
	    List<Map<String, Object>> smallCategory = fieldCateMap.get("smallCategory");
	    
	    // 대분류에 소분류를 추가
	    for (Map<String, Object> bcg : bigCategory) {
	        Map<String, Object> map = new HashMap<>();
	        String bigValue = (String) bcg.get("code_value");
	        Integer common2_code = (Integer) bcg.get("common2_code"); // Integer로 변환
	        map.put("id", common2_code);
	        map.put("largeCategory", bigValue);
	        map.put("hidden", bcg.get("code_hide").equals("N") ? false : true);
	        
	        // 소분류 데이터를 _children 배열에 추가
	        List<Map<String, Object>> children = new ArrayList<>();
	        for (Map<String, Object> scg : smallCategory) {
	            Integer parent_code = (Integer) scg.get("common2_code"); // Integer로 변환
	            if (common2_code.equals(parent_code)) {
	                Map<String, Object> map2 = new HashMap<>();
	                map2.put("id", scg.get("common3_code"));
	                map2.put("largeCategory", bigValue);
	                map2.put("smallCategory", scg.get("code_value"));
	                map2.put("hidden", scg.get("code_hide").equals("N") ? false : true);
	                children.add(map2);
	            }
	        }
	        if (!children.isEmpty()) {
	            map.put("_children", children);
	        }
	        data.add(map);
	    }
		
		
		
		return "";
	}
	

}
