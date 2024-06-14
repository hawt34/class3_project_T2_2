package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PayController {
	
	@GetMapping("date-picker")
	public String dateP() {
		return "payment/date_picker";
	}
	// 클래스 디테일
	@GetMapping("class-detail2")
	public String classDetail() {
		return"class/class-detail2";
	}
	//데이트픽커2
	@GetMapping("date-picker2")
	public String dateP2() {
		return "payment/date_picker2";
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
