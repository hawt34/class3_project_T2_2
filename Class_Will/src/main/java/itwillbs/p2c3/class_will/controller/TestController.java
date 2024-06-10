package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	
	@GetMapping("test2")
	public String test() {
		
		return "admin/admin_main";
	}
	
	@GetMapping("test3")
	public String test3() {
		
		return "admin/admin_member";
	}
}
