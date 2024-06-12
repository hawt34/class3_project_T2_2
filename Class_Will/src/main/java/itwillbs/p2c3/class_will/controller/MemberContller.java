package itwillbs.p2c3.class_will.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberContller {
	
	// 로그인 폼으로
	@GetMapping("member_login")
	public String memberLoginForm() {
		
		
		return "member/login_form";
	}
	
	// 로그인 비즈니스 로직 처리
	@PostMapping("member_login")
	public String memberLoginPro() {
		
		
		return "redirect:/";
	}
	
	
	// 회원가입 폼으로
	@GetMapping("member_join")
	public String memberJoinForm() {
		
		
		return "member/join_form";
	}
	
	// 회원가입 비즈니스 로직 처리
	@PostMapping("member_join")
	public String memberJoinPro() {
		
		
		return "member/login_form";
	}
	
	// 비밀번호 재설정
	@GetMapping("reset_passwd")
	public String resetPasswdFrom() {
		
		
		return "member/reset_passwd_form";
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
} // MemberContller
