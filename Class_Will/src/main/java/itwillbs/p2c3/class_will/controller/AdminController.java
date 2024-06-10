package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	
	@GetMapping("Admin")
	public String admin() {
		
		return "admin/admin_main";
	}
	
	@GetMapping("Admin/Member")
	public String adminMain() {
		
		return "admin/admin_member";
	}
	
	@GetMapping("Admin/Class")
	public String adminClass() {
		
		return "admin/admin_class";
	}
	
	@GetMapping("Admin/Category")
	public String adminCategory() {
		
		return "admin/admin_category";
	}
	
	@GetMapping("Admin/Csc")
	public String adminCsc() {
		
		return "admin/admin_csc";
	}
	
	
}
