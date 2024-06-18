package itwillbs.p2c3.class_will.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import itwillbs.p2c3.class_will.service.MemberService;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Controller
public class MemberContller {
	
	
	@Autowired
	private MemberService memberService;
	
	@Autowired 
	private HttpSession session;
	
	
	
	// 관리자 로그인 폼으로
	@GetMapping("admin-login")
	public String adminLoginForm() {
		return "member/admin_login_form";
	}
	
	
	// 관리자 로그인 비즈니스 로직 처리
	@PostMapping("admin-login")
	public String adminLoginPro(MemberVO member, Model model, BCryptPasswordEncoder passwordEncoder) {
		
		
		return "redirect:/";
	}
	
	// 회원 로그인 폼으로
	@GetMapping("member-login")
	public String memberLoginForm() {
		return "member/login_form";
	}
	
	// 회원 로그인 비즈니스 로직 처리
	@PostMapping("member-login")
	public String memberLoginPro(MemberVO member, Model model, BCryptPasswordEncoder passwordEncoder) {
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());
		System.out.println("평문 : " + member.getMember_passwd()); 
		System.out.println("암호문 : " + securePasswd); 
		
		member.setMember_passwd(securePasswd);
		member.setMember_email(member.getMember_email());
		member.setMember_name(member.getMember_name());
		member.setMember_tel(member.getMember_tel());
		
		System.out.println(member);
		
			
		return "redirect:/";
	}
	
	
	// 회원가입 폼으로
	@GetMapping("member-join")
	public String memberJoinForm() {
		return "member/join_form";
	}
	
	// 회원가입 비즈니스 로직 처리
	@PostMapping("member-join")
	public String memberJoinPro() {
		
		
		return "member/login_form";
	}
	
	// 비밀번호 재설정
	@GetMapping("reset-passwd")
	public String resetPasswdFrom() {
		
		
		return "member/reset_passwd_form";
	}
	

	@GetMapping("main-test")
	public String mainTest() {
		
		return "main_temp";
	}
	
	
	
	
	
	
	
	
	
	
	
} // MemberContller
