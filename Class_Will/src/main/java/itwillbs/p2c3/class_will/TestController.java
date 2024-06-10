package itwillbs.p2c3.class_will;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	@GetMapping("datePicker")
	public String dateP() {
		return "test_01/date_picker";
	}
	
	
}
