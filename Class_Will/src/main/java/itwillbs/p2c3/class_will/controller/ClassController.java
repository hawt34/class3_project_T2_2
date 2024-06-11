package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClassController {
	
	// 클래스 리스트
	@GetMapping("Class/List")
	public String classList() {
		return"class/class_list";
	}
	
	
	// 클래스 디테일
	@GetMapping("Class/Detail")
	public String classDetail() {
		return"class/class_detail";
//		return"class/NewFile";
	}
}
