package itwillbs.p2c3.class_will.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.ClassService;
import itwillbs.p2c3.class_will.service.PayService;


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
		// ---------------------------------------------------------------
	    // 소 카테고리
//		Map<String, Object> map = new HashMap<String, Object>();
//		List<Map<String, Object>> smallCategoryList = classService.getSmallCategoryList(common2_code);
//		map.put("common2_code", common2_code);
//		System.out.println("common2_code :::::::::::" + common2_code);
//		model.addAttribute("smallCategoryList", smallCategoryList);
//		System.out.println("smallCategoryList ::::::::::: " + smallCategoryList);
		
	    // 지역
	    List<Map<String, Object>> localList = classService.getCategoryLocal();
	    model.addAttribute("localList", localList);
	    
		
		
		return"class/class-list";
	}
	
	@GetMapping("big-category")
	@ResponseBody
    public ResponseEntity<List<Map<String, Object>>> getBigCategories() {
        List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
        return ResponseEntity.ok().body(bigCategoryList);
    }
	
//	@ResponseBody
//	@PostMapping("class-list")
////	public String classList(@RequestParam(name = "common2_code", required = false) String common2_code, Model model) {
//	public  Map<String, Object> classList(@RequestParam(name = "common2_code", required = false) String common2_code, Model model) {
//	    System.out.println("Received common2_code: " + common2_code); // common2_code 값 확인
//
//	    Map<String, Object> response = new HashMap<>();
//		List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
//		model.addAttribute("bigCategoryList", bigCategoryList);
//		System.out.println("bigCategoryList : " + bigCategoryList);
//		System.out.println("classlist ajax 들어옴");
//		// ---------------------------------------------------------------
//		// 소 카테고리
//		Map<String, Object> map = new HashMap<>();
//		map.put("common2_code", common2_code);
//		List<Map<String, Object>> smallCategoryList = classService.getSmallCategoryList(common2_code);
//		model.addAttribute("smallCategoryList", smallCategoryList);
//		System.out.println("ajax common2_code :::::::::::!!" + common2_code);
//		System.out.println("ajax smallCategoryList :::::::::::!! " + smallCategoryList);
//		
//		System.out.println("classlist ajax 들어옴ㅁㅁㅁㅁ");
//		if (common2_code != null) {
////			return "true";
//	        response.put("success", true);
//	        response.put("smallCategoryList", smallCategoryList);
//		} else { 
////			return "false";
//	        response.put("success", false);
//
//		}
//		
//	    return response;
//
//	}
	// 카테고리바
	@ResponseBody
	@GetMapping("small-category")
	public List<Map<String, Object>> getCategoryDetail(@RequestParam String big_category){
		List<Map<String, Object>> smallCategory = classService.getSmallCategory(big_category);
		System.out.println("smallCategory:@@@@@@ " + smallCategory);
		return smallCategory;
	}
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
