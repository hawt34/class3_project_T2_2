package itwillbs.p2c3.class_will.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

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
	public String classList(Model model) {
//	public String classList(Model model, @RequestParam(name = "common2_code", required = false) String common2Code) {
		// =================== 카테고리바 ===================
		// 대 카테고리
		List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
		model.addAttribute("bigCategoryList", bigCategoryList);
		System.out.println("bigCategoryList : " + bigCategoryList);
//		// ---------------------------------------------------------------
//	    // 소 카테고리
		List<Map<String, Object>> smallCategoryList = classService.getListSmallCategory();
		model.addAttribute("smallCategoryList", smallCategoryList);
		System.out.println("class-list : smallCategory:@@@@@@ " + smallCategoryList);
////		Map<String, Object> map = new HashMap<String, Object>();
////		List<Map<String, Object>> smallCategoryList = classService.getSmallCategoryList(common2_code);
////		map.put("common2_code", common2_code);
////		System.out.println("common2_code :::::::::::" + common2_code);
////		System.out.println("smallCategoryList ::::::::::: " + smallCategoryList);
		List<Map<String, Object>> map = classService.getClassList();
		model.addAttribute("map", map);
		System.out.println("class-list map :@@@@@@@@@@@@@!!!!!@@@@@@@@@@@@@" + map);
//	    // 지역
		List<Map<String, Object>> localList = classService.getCategoryLocal();
		model.addAttribute("localList", localList);
//		
////		for (Map<String, Object> classMap : map) {
////		    String small_category = (String) classMap.get("class_small_category");
////		    System.out.println("small_category : " + small_category);
////		}
//		for (Map<String, Object> classMap : bigCategoryList) {
//			String big_category = (String) classMap.get("code_value");
//			System.out.println("big_category : " + big_category);
//		}
//		
//	    // 새로운 맵에 bigCategoryList의 code_value 값을 저장
////	    Map<String, String> bigCategoryMap = new HashMap<>();
////	    for (Map<String, Object> bigCategory : bigCategoryList) {
////	        String code_value = (String) bigCategory.get("code_value");
////	        if (code_value != null) {
////	            bigCategoryMap.put(bigCategory.get("code_value").toString(), code_value);
////	        }
////	    }
////	    model.addAttribute("bigCategoryMap", bigCategoryMap);
////	    System.out.println("bigCategoryMap : " + bigCategoryMap);
		return "class/class-list";
	}
	
	@GetMapping("big-category")
	@ResponseBody
    public ResponseEntity<List<Map<String, Object>>> getBigCategories() {
        List<Map<String, Object>> bigCategoryList = classService.getBigCategoryList();
        return ResponseEntity.ok().body(bigCategoryList);
    }
	
	// 클래스 상세 리뷰
	@GetMapping("creator-review-form2")
	public String creatorReviewForm2(Model model, HttpSession session, @RequestParam int class_code){
		System.out.println("class_code @@@####################" + class_code);
//		Map<String, Object> map = new HashMap<>();
		
//		String member_code = (String)session.getAttribute("member_code");
//		map.put("member_code", member_code);
//		map.put("class_code", class_code);
//		System.out.println("member_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + member_code);
//		System.out.println("class_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + class_code);
		
		List<Map<String, Object>> detail = classService.getDetail(class_code); 
		model.addAttribute("detail", detail);
	    
		return"creator/creator-review-form2";
	}
	
	// 클래스 상세 질문
	@GetMapping("creator-inquiry-form2")
	public String creatorInquiryForm2(Model model, HttpSession session, @RequestParam int class_code){
//		System.out.println("class_cocde @@@####################" + class_code);
//		Map<String, Object> map = new HashMap<>();
		
//		String member_code = (String)session.getAttribute("member_code");
//		map.put("member_code", member_code);
//		map.put("class_code", class_code);
//		System.out.println("member_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + member_code);
		System.out.println("class_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + class_code);
		
		
		List<Map<String, Object>> detail = classService.getDetail(class_code); 
		model.addAttribute("detail", detail);
		return"creator/creator-inquiry-form2";
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
	public String classDetail(Model model, HttpSession session, @RequestParam int class_code) {
		System.out.println("class_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + class_code);
		Map<String, Object> map = new HashMap<>();
		
//		String member_code = (String)session.getAttribute("member_code");
//		map.put("member_code", member_code);
		map.put("class_code", class_code);
//		System.out.println("member_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + member_code);
		System.out.println("class_code @@@@@@@@@@@@@@@@@@@@@@@@@@" + class_code);
		
		List<Map<String, Object>> detail = classService.getDetail(class_code); 
		model.addAttribute("detail", detail);
	    
	    
		//classInfo 임시 클래스 데이터 가져오기
		Map<String, Object> testClassCode = new HashMap<>();
//		map.put("class_code", class_code);
//		map.put("member_code", member_code);
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
        for(Map<String, Object> maps : scheduleInfo) {
            JSONObject jsonObject = new JSONObject(maps);
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
