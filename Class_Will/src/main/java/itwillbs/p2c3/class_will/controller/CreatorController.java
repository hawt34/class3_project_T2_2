package itwillbs.p2c3.class_will.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.CreatorService;
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
	public String createrClass() {
		return "creator/creator-class";
	}
	// creater-class 등록페이지로
	@GetMapping("creator-classReg")
	public String createrClassReg(Model model) {
		
		List<Map<String, String>> class_sort_List = creatorService.getSort();
		List<Map<String, String>> categoryList = creatorService.getCategory();
		List<Map<String, String>> hashtagList = creatorService.getHashtag();
		
//		System.out.println("class_sort_List : " + class_sort_List);
		model.addAttribute("class_sort_List", class_sort_List);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("hashtagList", hashtagList);
		
		return "creator/creator-classReg";
	}
	
	// ajax로 카테고리 처리
	@ResponseBody
	@GetMapping("getCategoryDetail")
	public List<Map<String, String>> getCategoryDetail(@RequestParam String big_category){
		List<Map<String, String>> categoryDetail = creatorService.getCategoryDetail(big_category);
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
            if (entry.getKey().contains("회차")) {
            	curri.setCurri_round(entry.getKey());
            	curri.setCurri_content((String)entry.getValue());
            	curriList.add(curri);
            }
        }
		System.out.println(">>>>>>>>>map: " + map);
		System.out.println(">>>>>>>>>curriList: " + curriList);
		
		creatorService.createrClassRegPro(map, curriList);
		
		return "creator/creator-class";
	}
	
	// 해쉬태그 추가 페이지
	@GetMapping("creator-hashtag")
	public String creatorHashtag() {
		return "creator/creator-hashtag";
	}
		
	// creater-class 일정등록 페이지로
	@GetMapping("creator-class-plan")
	public String createrClassPlan() {
		return "creator/creator-class-plan";
	}
	
	//======================================================
	// creater-review로
	@GetMapping("creator-review")
	public String createrReview() {
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
	public String creatorInquiry() {
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
	public String createrAnalyze() {
		return "creator/creator-analyze";
	}
	// creater-cost로
	@GetMapping("creator-cost")
	public String createrCost() {
		return "creator/creator-cost";
	}
	
	

}
