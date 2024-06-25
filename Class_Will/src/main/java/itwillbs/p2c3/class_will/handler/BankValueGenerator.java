package itwillbs.p2c3.class_will.handler;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Component;


@Component
public class BankValueGenerator {
	//이용기관 코드를 변수에 미리 저장
	private String client_use_code = "M202113854";
	
	public String getBankTranId() {
		String bank_tran_id = "";
		
		//======================================================
		//생성된 난수 조합을 대문자 변환을 위한 toUpperCase() 메서드 호출을 통한 변환
//		System.out.println(GenerateRandomCode.getRandomCode(9).toUpperCase());
		bank_tran_id = client_use_code + "U" + GenerateRandomCode.getRandomCode(9).toUpperCase();
		
		return bank_tran_id;
	}
	
	public String getTranDTime() {
		LocalDateTime localDateTime = LocalDateTime.now();
		
		//LocalXXX 클래스 포맷팅 전용 클래스인 java.time.DateTimeFormatter - ofPattern() 메서드 호출하여
		// 변환할 날짜 및 시각의 포맷 형식 문자열 지정
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		
		return localDateTime.format(dateTimeFormatter);
	}
	
	
}
