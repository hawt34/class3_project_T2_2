package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CreatorController {

	// creater-class로
	@GetMapping("creator-class")
	public String createrClass() {
		return "creator/creator-class";
	}
	// creater-review로
	@GetMapping("creator-review")
	public String createrReview() {
		return "creator/creator-review";
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
