package itwillbs.p2c3.class_will.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.PayService;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	
	//ajax 호출
	@ResponseBody
	@GetMapping("date-changed")
	public List<Map<String, Object>> dateChanged(@RequestParam String date, @RequestParam String class_code) {
		System.out.println(date);
		int parsedClass_code = Integer.parseInt(class_code);
		List<Map<String, Object>> map = payService.getScheduleTime(date, parsedClass_code);
		return map;
	}
	
	@ResponseBody
	@GetMapping("will-pay-all")
	public Map<String, String> willPayAll(@RequestParam Map<String, String> map) {
		Map<String, String> credit = payService.getCredit(map);
		
		return credit;
	}
	
	
	
	@PostMapping("payment")
	public String paymentPro(Model model, @RequestParam Map<String, String> map) {
		System.out.println("@@@@@@@@@@:" + map);
//		String parsedTime = (String)map.get("select_time");
//		String[] splitTime = parsedTime.split("~");
		String[] splitTime = map.get("select_time").split("~");
		map.put("class_st_time", splitTime[0]);
		map.put("class_ed_time", splitTime[1]);
		Map<String, String> payInfo = payService.getPayInfo(map);
		
		if(payInfo == null) {
			model.addAttribute("msg", "결과가 없습니다.");
			return "result_process/fail";
		}
		//필요한 데이터 map에서 가져오기
		payInfo.put("headcount", map.get("selected_headcount"));
		
		//소계
		int price = Integer.parseInt(payInfo.get("class_price"));
		int count = Integer.parseInt(map.get("selected_headcount"));
		String subtotal = Integer.toString(price * count);
		payInfo.put("subtotal", subtotal);
		
		model.addAttribute("payInfo", payInfo);
		
		return "payment/payment";
	}
	
	
	//===============================================
	
	
	@GetMapping("payment-final")
	public String paymentFinal() {
		return "payment/payment_final";
	}
	
	@GetMapping("will-pay-charge")
	public String willPayCharging() {
		return "payment/will_pay_charge";
	}
	
	
}
