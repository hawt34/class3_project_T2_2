package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CscController {
	
	@GetMapping("Csc")
	public String cscMain() {
		
		return "csc/csc_notice";
	}
	
	@GetMapping("Csc_Detail")
	public String csctest() {
		
		return "csc/csc_notice_detail";
	}
	
	@GetMapping("Csc_Faq")
	public String csctest1() {
		
		return "csc/csc_faq";
	}
	
	@GetMapping("Csc_Oto")
	public String csctest2() {
		
		return "csc/csc_oto";
	}
	
	
}
