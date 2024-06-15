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


	
	
	

}
