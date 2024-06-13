package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PayController {
	
	@GetMapping("datePicker")
	public String dateP() {
		return "payment/date_picker";
	}
	@GetMapping("payment")
	public String payment() {
		return "payment/payment";
	}
	@GetMapping("payment-final")
	public String paymentFinal() {
		return "payment/payment_final";
	}
	
	@GetMapping("will-pay-charge")
	public String willPayCharging() {
		return "payment/will_pay_charge";
	}
	
	
}
