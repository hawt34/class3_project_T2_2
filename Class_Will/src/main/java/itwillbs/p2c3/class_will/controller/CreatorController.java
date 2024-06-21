package itwillbs.p2c3.class_will.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.CreatorService;
import itwillbs.p2c3.class_will.vo.ClassTimeVO;
import itwillbs.p2c3.class_will.vo.CurriVO;

@Controller
public class CreatorController {
	
	@Autowired
	private CreatorService creatorService;

	// creator-main으로
	@GetMapping("creator-main")
	public String createrMain() {
		return "creator/creator-main";
	}
	
	//======================================================
	// creator-class 
	// creater-class로
	@GetMapping("creator-class")
	public String createrClass(Model model) {
		List<Map<String, Object>> classList = creatorService.getClassInfo();
		
		List<JSONObject> cl_list = new ArrayList<JSONObject>(); 
		
		for(Map<String, Object> clas : classList) {
            JSONObject cl = new JSONObject(clas);
            cl_list.add(cl);
		}
		
		model.addAttribute("cl_list", cl_list);
		
		model.addAttribute("classList", classList);
		
		return "creator/creator-class";
	}
	// creater-class 등록페이지로
	@GetMapping("creator-classReg")
	public String createrClassReg(Model model) {
		
//		List<Map<String, String>> class_sort_List = creatorService.getSort();
		List<Map<String, String>> categoryList = creatorService.getCategory();
		List<Map<String, String>> hashtagList = creatorService.getHashtag();
		List<Map<String, String>> hide = creatorService.getHide();
		
		
//		System.out.println("class_sort_List : " + class_sort_List);
//		model.addAttribute("class_sort_List", class_sort_List);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("hashtagList", hashtagList);
		model.addAttribute("hide", hide);
		
		return "creator/creator-classReg";
	}

	// creater-class 상세페이지
	@GetMapping("creator-classModify")
	public String createrClassModify(Model model) {
		
//		List<Map<String, String>> class_sort_List = creatorService.getSort();
		List<Map<String, String>> categoryList = creatorService.getCategory();
		List<Map<String, String>> hashtagList = creatorService.getHashtag();
		
//		System.out.println("class_sort_List : " + class_sort_List);
//		model.addAttribute("class_sort_List", class_sort_List);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("hashtagList", hashtagList);
		
		return "creator/creator-classModify";
	}
	
	// ajax로 카테고리 처리
	@ResponseBody
	@GetMapping("getCategoryDetail")
	public List<Map<String, Object>> getCategoryDetail(@RequestParam String big_category){
		List<Map<String, Object>> categoryDetail = creatorService.getCategoryDetail(big_category);
		System.out.println("categoryDetail: " + categoryDetail);
		return categoryDetail;
	}

	// creater-class 등록
	@PostMapping("creator-classRegPro")
	public String createrClassRegPro(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		
		String member_code = (String)session.getAttribute("member_code");
		map.put("member_code", 1234);
		
		map.put("class_location", "" + map.get("post_code") + map.get("address1") + map.get("address2"));
		
		List<CurriVO> curriList = new ArrayList<CurriVO>();
		
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			CurriVO curri = new CurriVO();
            if (entry.getKey().contains("차시")) {
            	curri.setCurri_round(entry.getKey());
            	curri.setCurri_content((String)entry.getValue());
            	curriList.add(curri);
            }
        }
		
		System.out.println(">>>>>>>>>map: " + map);
		System.out.println(">>>>>>>>>curriList: " + curriList);
		
		creatorService.createrClassRegPro(map, curriList);
		
		return "redirect:/creator-class";
	}
	
	// 해쉬태그 추가 페이지
	@GetMapping("creator-hashtag")
	public String creatorHashtag() {
		return "creator/creator-hashtag";
	}
		
	// creater-class 일정등록 페이지로
	@GetMapping("creator-class-plan")
	public String createrClassPlan(Model model) {
		
		List<Map<String, Object>> classList = creatorService.getClassInfo();
		model.addAttribute("classList", classList);
		
		return "creator/creator-class-plan";
	}
	
	@PostMapping("creatorPlanPro")
	public String creatorPlanPro(@RequestParam Map<String, Object> map, Model model) {
		System.out.println(">>>>>>>>>>>map : " + map);
		// 회차별 시간 데이터 가져오기
		List<ClassTimeVO> classTimeList = new ArrayList<ClassTimeVO>();
		Map<String, ClassTimeVO> tempMap = new HashMap<>();
		
		for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getKey().contains("회차")) {
            	String key = entry.getKey();
            	String round = key.substring(0, key.indexOf('_'));
            	String type = key.substring(key.indexOf('_') + 1);
            	
            	 ClassTimeVO classTime;
            	    
        	    if (tempMap.containsKey(round)) {
        	        classTime = tempMap.get(round);
        	    } else {
        	        classTime = new ClassTimeVO();
        	        classTime.setRound(round);
        	        tempMap.put(round, classTime);
        	    }
        	    
        	    if ("start".equals(type)) {
        	        classTime.setStartTime((String)entry.getValue());
        	        System.out.println("classTimeStart: " + classTime);
        	    } else if ("end".equals(type)) {
        	        classTime.setEndTime((String)entry.getValue());
        	        System.out.println("classTimeEnd: " + classTime);
        	    }
            }
        }
		classTimeList.addAll(tempMap.values());
		System.out.println(">>>>>>>classTimeList" + classTimeList);
		
		// 날짜 데이터 파싱하여 List로 전달
		List<String> dateList = Arrays.stream(((String)map.get("selectedDates")).split(","))
			.map(String::trim)
			.collect(Collectors.toList());
		
		for(String date : dateList) {
			for(ClassTimeVO classTime : classTimeList) {
				classTime.setDate(date);
			}
		}
		System.out.println(">>>>>>>classTimeList" + classTimeList);
 
		int insertCount = creatorService.insertClassPlan(map, classTimeList);
		if(insertCount > 0) {
			return "redirect:/creator-class";
		}
		
		model.addAttribute("msg", "일정등록 오류");
		return "result_process/fail";
	}
	
	// ajax로 데이터 가져오기
	@ResponseBody
	@GetMapping("getSelectedDates")
	public List<Map<String, Object>> getSelectedDates(@RequestParam(defaultValue = "0") int classCode) {
		List<Map<String, Object>> scheduleList = creatorService.getSchedule(classCode);
		System.out.println(">>>>>>>>>scheduleList: " + scheduleList);
		
		return scheduleList;
	}
	
	//======================================================
	// creater-review로
	@GetMapping("creator-review")
	public String createrReview(Model model) {
		
		List<Map<String, Object>> classList = creatorService.getClassInfo();
		model.addAttribute("classList", classList);
		
		return "creator/creator-review";
	}
	// creater-review-form으로
	@GetMapping("creator-review-form")
	public String createrReviewForm() {
		return "creator/creator-review-form";
	}
	
	//======================================================

	// 문의사항 페이지로
	@GetMapping("creator-inquiry")
	public String creatorInquiry(Model model) {
		
		List<Map<String, Object>> classList = creatorService.getClassInfo();
		model.addAttribute("classList", classList);
		
		return "creator/creator-inquiry";
	}
	// creater-inquiry-form으로
	@GetMapping("creator-inquiry-form")
	public String createrInquiryForm() {
		return "creator/creator-inquiry-form";
	}
	
	
	//======================================================
	
	// creater-analyze로
	@GetMapping("creator-analyze")
	public String createrAnalyze(Model model) {
		
		List<Map<String, Object>> classList = creatorService.getClassInfo();
		model.addAttribute("classList", classList);
		
		return "creator/creator-analyze";
	}
	// creater-cost로
	@GetMapping("creator-cost")
	public String createrCost(Model model) {
		List<Map<String, Object>> classList = creatorService.getClassInfo();
		model.addAttribute("classList", classList);
		
		return "creator/creator-cost";
	}
	
	

}
