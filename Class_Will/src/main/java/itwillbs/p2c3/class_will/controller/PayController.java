package itwillbs.p2c3.class_will.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import itwillbs.p2c3.class_will.service.PayService;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	
	private static final Logger logger = LoggerFactory.getLogger(PayController.class);
	
	//ajax 호출
	@ResponseBody
	@GetMapping("date-changed")
	public List<Map<String, Object>> dateChanged(@RequestParam String date, @RequestParam String class_code) {
		
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
	
	@ResponseBody
	@PostMapping("verify")
	public Map<String, Object> verify(@RequestBody Map<String, Object> map) {
		
		Map<String, Object> response = payService.verifyPayment(map);
		
		return response;
	}
	
	//최종결제 페이지 메핑
	@GetMapping("payment-final")
	public String paymentFinal(@RequestParam Map<String, String> map, Model model) {
		Map<String, String> paySuccessInfo = payService.getSuccessPayInfo(map);
		System.out.println("######111: " + paySuccessInfo);
		
		
		model.addAttribute("paySuccessInfo", paySuccessInfo);
		return "payment/payment_final";
	}
	//===============================================================
	//윌페이 충전 페이지로 이동
	@GetMapping("will-pay-charge")
	public String willPayCharging() {
		return "payment/will_pay_charge";
	}
	@GetMapping("/callback")
	public String auth(@RequestParam Map<String, String> authResponse, Model model, HttpSession session) {
		logger.info("authResponse" + authResponse.toString());
		//----------------------------------------------------------------
		MemberVO member = (MemberVO)session.getAttribute("member");
		String email = member.getMember_email();
		
		
		// 토큰 발급 API - 사용자 토큰발급 API 요청
		// BankApiService - requestAccesToken() 메서드 호출하여 엑세스 토큰 발급 요청
		// -> 파라미터: 토큰 발급 요청에 필요한 정보(인증코드 요청 결과 저장된 Map 객체)
		// -> 리턴타입: 응답 데이터가 저장된 ResponseTokenVO 타입
		Map map = payService.getAccessToken(authResponse);
		logger.info("엑세스 토큰: " + map.get("access_token"));
		
//				ResponseTokenVO token = new ResponseTokenVO(); null 받기위한 가정
		
		//요청 결과 판별
		// => ResponseTokenVO 객체가 null이거나 엑세스 토큰 값이 null 일 경우 요청 에러 처리
		// => "result_process.fail.jsp 페이지 포워딩 시 'isClose' 값을 true로 설정하여 전달
		// (메세지 : "토큰 발급 실패! 다시 인증을 해주세요!")
		if(map == null || map.get("access_token") == null) {
			model.addAttribute("msg", "토큰 발급 실패! 다시 인증을 해주세요!");
			model.addAttribute("isClose", true);
			return "result_process/fail";
		}
		
		//BankApiService - registAccessToken() 메서드 호출하여 토큰 관련 정보 저장 요청
		//=> 파라미터 : 세션 아이디, BankTokenVO 객체
		//=> 두 데이터를 하나의 객체로 전달할 경우(Map 객체 활용)
//		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", email);
//		map.put("token", map.get("access_token"));
		
		payService.registAccessToken(map);
		
		// 세션에 엑세스토큰(access_token)과 사용자번호(user_seq_no) 저장
		// => BankTokenVO 타입 객체 형태 그대로 저장
		session.setAttribute("access_token", map.get("access_token"));
		
		//"success.jsp 페이지로 포워딩
		// 메세지 : "계좌 인증 완료!", isClose 값을 true, "targetURL" 값을  "FintechUserInfo" 설정
		model.addAttribute("msg", "계좌 인증 완료!");
		model.addAttribute("isClose", true);
		model.addAttribute("targetURL", "will-pay-charge");
		return "result_process/success";
	}
	
	
}
