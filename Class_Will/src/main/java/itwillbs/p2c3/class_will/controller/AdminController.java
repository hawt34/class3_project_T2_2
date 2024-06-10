package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	
	@GetMapping("test2")
	public String test() {
		
		return "admin/admin_main";
	}
	
	@GetMapping("test3")
	public String test3() {
		
		return "admin/admin_member";
	}

	@GetMapping("test4")
	public String test4() {
		
		return "admin/admin_class";
	}
}
	
