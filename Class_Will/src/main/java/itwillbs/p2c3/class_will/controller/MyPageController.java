package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
	@GetMapping("my-page")
	public String myPage() {
		return "mypage/mypage";
	}
	
	// 취향보기
	@GetMapping("my-pre")
	public String myPre() {
		return "mypage/mypage-pre";
	}
	// 위시리스트
	@GetMapping("my-wish")
	public String myWish() {
		return "mypage/mypage-wish";
	}
	// 마이클래스
	@GetMapping("my-class")
	public String myClass() {
		return "mypage/mypage-class";
	}
	//내가 쓴 리뷰
	@GetMapping("my-review")
	public String myReview() {
		return "mypage/mypage-review";
	}
	//내가 쓴 리뷰
	@GetMapping("my-credit")
	public String myCredit() {
		return "mypage/mypage-credit";
	}
		
	

}
