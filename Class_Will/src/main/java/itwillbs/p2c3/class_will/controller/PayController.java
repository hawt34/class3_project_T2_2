package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PayController {
	
	@GetMapping("datePicker")
	public String dateP() {
		return "test_01/date_picker";
	}
	@GetMapping("payment")
	public String payment() {
		return "test_01/payment";
	}
	@GetMapping("paymentFinal")
	public String paymentFinal() {
		return "test_01/payment_final";
	}
}
