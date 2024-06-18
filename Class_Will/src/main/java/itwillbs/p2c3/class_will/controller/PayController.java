package itwillbs.p2c3.class_will.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import itwillbs.p2c3.class_will.service.PayService;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	
	// 클래스 디테일
	@GetMapping("class-detail2")
	public String classDetail(Model model) {
		
		//스케쥴 select -- 파라미터: 클래스 코드
		List<Map<String, Object>> scheduleInfo = payService.getClassSchedule(2);
		// JSONArray를 생성하고 리스트의 각 맵을 JSONObject로 변환하여 추가합니다.
        JSONArray jsonArray = new JSONArray();
        for(Map<String, Object> map : scheduleInfo) {
            JSONObject jsonObject = new JSONObject(map);
            jsonArray.put(jsonObject);
        }
        // JSONArray를 JSON 문자열로 변환합니다.
        String jsonString = jsonArray.toString();

        // 결과를 출력합니다.
//        System.out.println(jsonString);
		
		
        model.addAttribute("class_schedule", scheduleInfo);
		//임시 클래스 코드
		model.addAttribute("class_code", scheduleInfo.get(0).get("class_code"));
		//임시 클래스 스케쥴
		model.addAttribute("class_schedule_date", jsonString);
		//임시 클래스 타입
		model.addAttribute("class_type", "1");
		return"class/class-detail2";
	}
	//데이트픽커2
	@GetMapping("date-picker2")
	public String dateP2() {
		return "payment/date_picker2";
	}
	
	//결제 페이지 이동
//	@GetMapping("payment")
//	public String payment(Model model, @RequestParam Map<String, Object> map) {
//		Map<String , String> classInfo = payService.getClassInfo(map);
//		return "payment/payment";
//	}
	@PostMapping("payment")
	public String paymentPro(Model model, @RequestParam Map<String, Object> map) {
		System.out.println(map);
		if(map.get("class_type").equals("0")) {
			
		} else {
			
		}
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
