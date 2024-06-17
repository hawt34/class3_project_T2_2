package itwillbs.p2c3.class_will.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import itwillbs.p2c3.class_will.service.CreatorService;

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
	public String createrClassReg() {
		return "creator/creator-classReg";
	}

	// creater-class 등록
	@GetMapping("creator-classRegPro")
	public String createrClassRegPro(@RequestParam Map<String, Object> map, HttpSession session) {
		System.out.println(map);
		
		String id = (String)session.getAttribute("sId");
		
		
		int insertCount = creatorService.createrClassRegPro(map);
		
		
		
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
