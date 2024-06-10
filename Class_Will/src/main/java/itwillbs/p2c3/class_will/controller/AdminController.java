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
<<<<<<< HEAD
	
	@GetMapping("test4")
	public String test4() {
		
		return "admin/admin_class";
	}
	
	
=======
>>>>>>> branch 'main' of https://github.com/hawt34/class3_project_T2_2.git
}
