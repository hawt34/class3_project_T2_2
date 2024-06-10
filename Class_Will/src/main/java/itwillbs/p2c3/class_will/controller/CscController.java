package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CscController {
	
	@GetMapping("Csc")
	public String cscMain() {
		
		return "csc/csc_main";
	}
}
