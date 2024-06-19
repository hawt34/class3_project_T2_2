package itwillbs.p2c3.class_will.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.PayService;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	
	// 클래스 디테일
	@GetMapping("class-detail2")
	public String classDetail(Model model) {
		
		//스케쥴 select -- 파라미터: 클래스 코드
		List<Map<String, Object>> scheduleInfo = payService.getClassSchedule(54);
		// JSONArray를 생성하고 리스트의 각 맵을 JSONObject로 변환하여 추가합니다.
        JSONArray jsonArray = new JSONArray();
        for(Map<String, Object> map : scheduleInfo) {
            JSONObject jsonObject = new JSONObject(map);
            jsonArray.put(jsonObject);
        }
        // JSONArray를 JSON 문자열로 변환합니다.
        String jsonString = jsonArray.toString();

        model.addAttribute("class_schedule", scheduleInfo);
		//임시 클래스 코드
		model.addAttribute("class_code", scheduleInfo.get(0).get("class_code"));
		//임시 클래스 스케쥴
		model.addAttribute("class_schedule_date", jsonString);
		//임시 클래스 타입
		model.addAttribute("class_type", "1");
		return"class/class-detail2";
	}
	
	//ajax 호출
	@ResponseBody
	@GetMapping("date-changed")
	public List<Map<String, String>> dateChanged(@RequestParam String date, @RequestParam String class_code) {
		System.out.println(date);
		int parsedClass_code = Integer.parseInt(class_code);
		List<Map<String, String>> map = payService.getScheduleTime(date, parsedClass_code);
		return map;
	}
	
	//결제 페이지 이동
//	@GetMapping("payment")
//	public String payment(Model model, @RequestParam Map<String, Object> map) {
//		Map<String , String> classInfo = payService.getClassInfo(map);
//		return "payment/payment";
//	}
	
	@PostMapping("payment")
	public String paymentPro(Model model, @RequestParam Map<String, Object> map, @RequestParam MultiValueMap<String, String> paramMap) {
		System.out.println(map);
		System.out.println(paramMap);
		if(map.get("class_type").equals("0")) { //원데이 클래스
			paramMap.get("select_time");
			
			
			
			return "payment/payment";
		} else { // 장기 클래스
			
			return "payment/payment";
		}
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
