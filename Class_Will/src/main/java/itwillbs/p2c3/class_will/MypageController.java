package itwillbs.p2c3.class_will;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	

	// 마이페이지
	@GetMapping("myPage")
	public String myPage() {
		return "mypage/mypage";
	}
}
