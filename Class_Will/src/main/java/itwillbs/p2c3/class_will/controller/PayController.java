package itwillbs.p2c3.class_will.controller;

import java.util.HashMap;
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
	public String willPayCharging(Model model, HttpSession session) {
		if(session.getAttribute("token") != null) {
			Map<String, String> token = (Map<String, String>)session.getAttribute("token");
			
			//bankUserInfo 가져오기
			Map<String, String> map = new HashMap<String, String>();
			map.put("access_token", token.get("access_token"));
			map.put("user_seq_no", token.get("user_seq_no"));
			
			Map bankUserInfo = payService.getUserInfo(map);
			logger.info(">>>>>> bankUserInfo: " + bankUserInfo);
			
			model.addAttribute("bankUserInfo", bankUserInfo);
		}
		
		return "payment/will_pay_charge";
	}
	@GetMapping("/callback")
	public String auth(@RequestParam Map<String, String> authResponse, Model model, HttpSession session) {
		logger.info("authResponse" + authResponse.toString());
		//----------------------------------------------------------------
		MemberVO member = (MemberVO)session.getAttribute("member");
		String email = member.getMember_email();
		
		//access_token 발급
		Map map = payService.getAccessToken(authResponse);
		logger.info("엑세스 토큰: " + map.get("access_token"));
		
		if(map == null || map.get("access_token") == null) {
			model.addAttribute("msg", "토큰 발급 실패! 다시 인증을 해주세요!");
			model.addAttribute("isClose", true);
			return "result_process/fail";
		}
		map.put("email", email);
		session.setAttribute("token", map.get("access_token"));
		
		// access_token db저장
		payService.registAccessToken(map);
		
		
		
		// 세션에 엑세스토큰(access_token)과 사용자번호(user_seq_no) 저장
		// => BankTokenVO 타입 객체 형태 그대로 저장
		
		//session에 저장한 redirectUrl
		String redirectUrl = (String)session.getAttribute("redirectUrl");
		
		//"success.jsp 페이지로 포워딩
		// 메세지 : "계좌 인증 완료!", isClose 값을 true, "targetURL" 값을  "FintechUserInfo" 설정
		model.addAttribute("msg", "계좌 인증 완료!");
		model.addAttribute("isClose", true);
		model.addAttribute("targetURL", redirectUrl);
		return "result_process/success";
	}
	
	
}
