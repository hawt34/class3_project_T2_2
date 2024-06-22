package itwillbs.p2c3.class_will;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import itwillbs.p2c3.class_will.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	// 메인으로
	@GetMapping("main")
	public String main() {
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

	
	// top-분야 카테고리
	@ResponseBody
	@GetMapping("top-field-category")
	public String fieldCategory() {
		
		Map<String, String> fieldCateMap = mainService.selectFieldCate();
		
		
		
		
		
		
		
		
		
		
		
		return "";
	}
	

}
