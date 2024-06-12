package itwillbs.p2c3.class_will;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	// 메인으로
	@GetMapping("main")
	public String Main() {
		return "main";
	}

	// chackout으로
	@GetMapping("chackout")
	public String chackout() {
		return "chackout";
	}
	
	// shop으로
	@GetMapping("shop")
	public String shop() {
		return "shop";
	}
	
	// shop-detail으로
	@GetMapping("shop-detail")
	public String shopDetail() {
		return "shop-detail";
	}


	
	
	
	
	
	// use_info로
	@GetMapping("use_info")
	public String useInfo() {
		return "notice/use_info";
	}
	
	// notice로
	@GetMapping("notice")
	public String notice() {
		return "notice/notice";
	}
	
	// use_info로
	@GetMapping("FAQ")
	public String FAQ() {
		return "notice/FAQ";
	}
	
	// privacy_info로
	@GetMapping("privacy_info")
	public String privacyInfo() {
		return "notice/privacy_info";
	}
	
	// refund_info로
	@GetMapping("refund_info")
	public String refundInfo() {
		return "notice/refund_info";
	}
	
	
	
	

}
