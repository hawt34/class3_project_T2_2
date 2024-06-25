package itwillbs.p2c3.class_will.handler;

import java.net.URI;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

@Component
public class BankApi {
	@Autowired
	private BankValueGenerator bankValueGenerator;

	private static final Logger logger = LoggerFactory.getLogger(BankApi.class);

	@Value("${client_id}")
	private String client_id;
	@Value("${client_secret}")
	private String client_secret;
	@Value("${client_use_code}")
	private String client_use_code; //이용기관측(서버) 코드
	@Value("${cntr_account_num}")
	private String cntr_account_num; //이용기관측(서버) 계좌
	@Value("${base_url}")
	private String base_url;

	public Map requestAccessToken(Map<String, String> authResponse) {
		// 금융결제원 오픈 API의 토큰 발급 API 요청 작업 수행 및 처리
		// POST 방식 요청을 수행할 URL 정보를 URI 타입 객체로 생성
		URI uri = UriComponentsBuilder
					.fromUriString(base_url)
					.path("/oauth/2.0/token")//기본요청 주소
					.encode() // 주소 인코딩
					.build() // UriComponents 타입 객체 생성
					.toUri(); //URI 타입 객체로 변환

		LinkedMultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		parameters.add("code", authResponse.get("code"));
		//appdata.properties 파일 내의 값을 가져와서 전달
		parameters.add("client_id", client_id);
		parameters.add("client_secret", client_secret);
		parameters.add("redirect_uri", "http://localhost:8081/class_will/callback");
		parameters.add("grant_type", "authorization_code");
		// => 바디 정보만 설정하고, 헤더 정보는 기본적인 헤더값 사용하므로 설정 생략
		HttpEntity<LinkedMultiValueMap<String, String>> httpEntity = new HttpEntity<LinkedMultiValueMap<String,String>>(parameters);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Map> responseEntity = 
				restTemplate.exchange(uri, HttpMethod.POST, httpEntity, Map.class);
		//응답 정보를 확인을 위해 ResponseEntity 객체의 메서드 활용
		logger.info("응답 코드: " + responseEntity.getStatusCode());
		logger.info("응답 헤더: " + responseEntity.getHeaders());
		logger.info("응답 본문: " + responseEntity.getBody());

		return responseEntity.getBody();
	}
	
	//bankUserInfo를 받아오는 메서드(GET)
	public Map requestUserInfo(Map<String, String> map) {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + map.get("access_token"));
		
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		
		//3. HTTP 요청에 필요한 URI 정보 생성
		// => GET 방식 요청 시 전달할 파라미터는 queryParam() 메서드로 직접 전달 가능
		URI uri = UriComponentsBuilder
				.fromUriString(base_url) //기본요청 주소
				.path("/v2.0/user/me") //작업 요청 상세 주소(세부 경로)
				.queryParam("user_seq_no", map.get("user_seq_no")) //파라미터
				.encode() // 주소 인코딩
				.build() // UriComponents 타입 객체 생성
				.toUri(); //URI 타입 객체로 변환
		
		//4.Restful API 요청을 위한 RestTemplate 객체 활용
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<Map> responseEntity = restTemplate.exchange(uri, HttpMethod.GET, httpEntity, Map.class);
		
		//6. ResponseEntity 객체의 getBody() 메서드 호출하여 응답데이터 파싱결과 객체 리턴
		return responseEntity.getBody();
	}
}