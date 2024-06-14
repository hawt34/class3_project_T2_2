package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CscController {
	
	@GetMapping("csc")
	public String cscMain() {
		
		return "csc/csc_notice";
	}
	
	@GetMapping("csc-detail")
	public String csctest() {
		
		return "csc/csc_notice_detail";
	}
	
	@GetMapping("csc-faq")
	public String csctest1() {
		
		return "csc/csc_faq";
	}
	
	@GetMapping("csc-oto")
	public String csctest2() {
		
		return "csc/csc_oto";
	}
	
	
	@GetMapping("use-info")
	public String useInfo() {
		
		return "csc/csc_use_info";
	}
	
	@GetMapping("privacy-info")
	public String privacyInfo() {
		
		return "csc/csc_privacy_info";
	}
	
	@GetMapping("refund-info")
	public String refundInfo() {
		
		return "csc/csc_refund_info";
	}
	
	
	
}
