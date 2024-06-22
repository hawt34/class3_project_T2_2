package itwillbs.p2c3.class_will.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.ClassService;
import itwillbs.p2c3.class_will.service.PayService;
import retrofit2.http.POST;


@Controller
public class ClassController {
	
	@Autowired
	private PayService payService;
	
	@Autowired
	private ClassService classService;
	
	// 클래스 리스트
	@GetMapping("class-list")
	public String classList(Model model, @RequestParam(name = "common2_code", required = false) String common2_code) {
//	public String classList(Model model, @RequestParam(name = "common2_code", required = false) String common2Code) {
		// =================== 카테고리바 ===================
		// 대 카테고리
		List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
		model.addAttribute("bigCategoryList", bigCategoryList);
		System.out.println("bigCategoryList : " + bigCategoryList);
		// 소 카테고리
	    // common2Code 파라미터 처리
//	    if (common2_code != null) {
//	        map.put("common2_code", common2_code);
//	    }
//		System.out.println("map.get(common2_code)" + map.get(common2_code));
//		List<Map<String, Object>> smallCategoryList = classService.getSmallCategoryList(map);
//		map.put("common2_code", bigCategoryList.get(0).get("common2_code"));
//		map.put("common2_code", code_value);
//		System.out.println("common2_code : " + bigCategoryList.get(0).get("common2_code"));
//		System.out.println("bigCategory" + map.get(bigCategoryList));
//		System.out.println("bigCategoryList.get(0)" + bigCategoryList.get(0));
//		model.addAttribute("smallCategoryList", smallCategoryList);
//		System.out.println("smallCategoryList : " + smallCategoryList);
		
		// ---------------------------------------------------------------
	    // 소 카테고리
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> smallCategoryList = classService.getSmallCategoryList(common2_code);
		map.put("common2_code", common2_code);
		System.out.println("common2_code :::::::::::" + common2_code);
		model.addAttribute("smallCategoryList", smallCategoryList);
		System.out.println("smallCategoryList ::::::::::: " + smallCategoryList);
		
//	    if (!bigCategoryList.isEmpty()) {
//	        // 첫 번째 대 카테고리의 common2_code 값을 map에 추가
//	        Object common2Code = bigCategoryList.get(0).get("common2_code");
//	        if (common2Code != null) {
//	            map.put("common2_code", common2Code);
//	        }
//	        System.out.println("bigCategoryList.get(0) : " + bigCategoryList.get(0));
//	    } else {
//	        // bigCategoryList가 비어있는 경우 처리 (예: 로그 출력)
//	        System.out.println("bigCategoryList가 비어있습니다.");
//	    }
	    
	    // 지역
	    List<Map<String, Object>> localList = classService.getCategoryLocal();
	    model.addAttribute("localList", localList);
	    
		
		
		return"class/class-list";
	}

    @GetMapping("getSmallCategories")
    @ResponseBody
    public List<Map<String, String>> getSmallCategories(@RequestParam String bigCategoryCode) {
    	System.out.println("getSmallCategories");
        return classService.getSmallCategoriesByBigCategoryCode(bigCategoryCode);
    }
    
	@ResponseBody
	@PostMapping("class-list")
//	public String classList(@RequestParam(name = "common2_code", required = false) String common2_code, Model model) {
	public String classList(@RequestParam(name = "common2_code", required = false) String common2_code, Model model) {
		List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
		model.addAttribute("bigCategoryList", bigCategoryList);
		System.out.println("bigCategoryList : " + bigCategoryList);
		System.out.println("classlist ajax 들어옴");
		// ---------------------------------------------------------------
		// 소 카테고리
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> smallCategoryList = classService.getSmallCategoryList(common2_code);
		map.put("common2_code", common2_code);
		System.out.println("ajax common2_code :::::::::::" + common2_code);
		model.addAttribute("smallCategoryList", smallCategoryList);
		System.out.println("ajax smallCategoryList ::::::::::: " + smallCategoryList);
		
		System.out.println("classlist ajax 들어옴ㅁㅁㅁㅁ");
		if (common2_code != null || !common2_code.equals("")) {
			return "true";
		} else { 
			return "false";
		}
		
		
	}
	
//	@ResponseBody
//	@PostMapping("class-list")
//	public Map<String, Boolean> classList(@RequestParam(name = "common2_code", required = false) String common2_code, Model model) {
//	    List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
//	    model.addAttribute("bigCategoryList", bigCategoryList);
//	    System.out.println("bigCategoryList : " + bigCategoryList);
//
//	    Map<String, Boolean> response = new HashMap<>();
//	    if (common2_code == null) {
//	        response.put("success", false);
//	    } else {
//	        response.put("success", true);
//	    }
//	    return response;
//	}
	
	// 클래스 디테일
	@GetMapping("class-detail")
	public String classDetail(Model model) {
		
		//classInfo 임시 클래스 데이터 가져오기
		Map<String, Object> testClassCode = new HashMap<>();
		//내가 만든 class 데이터 (임시)!! - 나중에 바꾸면 알려줘~~
		//원래는 메인에서 해당 클래스 누르면 그 클래스의 class_code 값이 온거를 파라미터로 getClassInfo() 메서드 호출
		//하려고 했는데 아직 메인이 완성이 안되어 있어서 내가 임시로 만든 클래스 코드 '54' 넣은거임
		testClassCode.put("class_code", 54);
		Map<String, Object> classInfo = payService.getClassInfo(testClassCode);
		System.out.println("$$$$$$$$$$$$: " + classInfo);
		model.addAttribute("classInfo", classInfo);
		//========================================================================
		//스케쥴 select -- 파라미터: 클래스 코드 (임시)
		List<Map<String, Object>> scheduleInfo = payService.getClassSchedule(54);
		// JSONArray를 생성하고 리스트의 각 맵을 JSONObject로 변환하여 추가합니다.
        JSONArray jsonArray = new JSONArray();
        for(Map<String, Object> map : scheduleInfo) {
            JSONObject jsonObject = new JSONObject(map);
            jsonArray.put(jsonObject);
        }
        // JSONArray를 JSON 문자열로 변환합니다.
        String jsonString = jsonArray.toString();
        model.addAttribute("class_schedule", scheduleInfo);
		//클래스 스케쥴
		model.addAttribute("class_schedule_date", jsonString);
        //========================================================================
        
		return"class/class-detail";
	}
}
