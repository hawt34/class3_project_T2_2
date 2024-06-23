package itwillbs.p2c3.class_will.service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import itwillbs.p2c3.class_will.mapper.PayMapper;

@Service
public class PayService {
	@Autowired
	private PayMapper payMapper;
	
	private IamportClient client;
	
	public PayService() {
		String apiKey ="3531856454755108";
		String apiSecret = "ue5UeHzRddcp4PozEatgw9W9SD1To4172hH0vQZebn5ZqW95F8WDgrZ3mD7EIyhoKuaEIHZ1HiYMz1TJ";
		
		this.client = new IamportClient(apiKey, apiSecret);
	}

	//클래스 info - select
	public Map<String, Object> getClassInfo(Map<String, Object> map) {
		return payMapper.selectClassInfo(map);
	}
	
	//스캐쥴 info
	public List<Map<String, Object>> getClassSchedule(int i) {
		return payMapper.selectSchedule(i);
	}
	
	//date로 클래스 스케쥴 타임 가져오기
	public List<Map<String, Object>> getScheduleTime(String date, int parsedClass_code) {
		return payMapper.selectScheduleTime(date, parsedClass_code);
	}
	
	//payment 관련 정보 모두 가져오기
	public Map<String, String> getPayInfo(Map<String, String> map) {
		return payMapper.selectPayInfo(map);
	}
	
	//나의 모든 크레딧 조회
	public Map<String, String> getCredit(Map<String, String> map) {
		return payMapper.selectCredit(map);
	}
	
	//결제 검증
	public Map<String, Object> verifyPayment(Map<String, Object> map) {
		Map<String, Object> response = new HashMap<String, Object>();
		try {
			IamportResponse<Payment> paymentResponse = client.paymentByImpUid((String)map.get("imp_uid"));
			response = new HashMap<String, Object>();
			if(paymentResponse.getResponse() != null && paymentResponse.getResponse().getStatus().equals("paid")) {
				//use_willpay 처리
				payMapper.updateCredit(map);
				//class_schedule 테이블의 class_remain_headcount 처리
				payMapper.updateHeadcount(map);
				
				//-----------------------------------------
				//DB에 결제 데이터 저장
				//class_schedule_code, member_code, class_code 가져오기
				Map<String, Object> objects = payMapper.selectObjects(map);
				
				Payment pr = paymentResponse.getResponse();
				System.out.println(paymentResponse.getResponse().getStatus());
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String payDate = sdf.format(pr.getPaidAt());
				
				map.put("pay_type", pr.getPayMethod().equals("card") ? 1 : 2);
				map.put("pay_amount", pr.getAmount());
				map.put("pay_datetime", payDate);
				map.put("class_code", objects.get("class_code"));
				map.put("class_schedule_code", objects.get("class_schedule_code"));
				map.put("member_code", objects.get("member_code"));
				payMapper.registPaySuccessInfo(map);
				
//				System.out.println("페이번호: " + map.get("pay_code"));
				
				
				response.put("pay_code", map.get("pay_code"));
				response.put("success", true);
				response.put("error", "결제 검증에 성공하였습니다");
			} else {
				response.put("success", false);
				response.put("error", "결제 검증에 실패하였습니다.");
			}
		} catch (IamportResponseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return response;
	}

	
}
