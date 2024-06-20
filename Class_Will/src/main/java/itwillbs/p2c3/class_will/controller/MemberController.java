package itwillbs.p2c3.class_will.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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
public class MemberController {
	
	
	@Autowired
	private MemberService memberService;
	
	@Autowired 
	private HttpSession session;
	
	
//	
//	// 관리자 로그인 폼으로
//	@GetMapping("admin-login")
//	public String adminLoginForm() {
//		return "member/admin_login_form";
//	}
//	
//	
//	// 관리자 로그인 비즈니스 로직 처리
//	@PostMapping("admin-login")
//	public String adminLoginPro(MemberVO member, Model model, BCryptPasswordEncoder passwordEncoder) {
//		
//		
//		return "redirect:/";
//	}
//	
	
	
	
	// 회원가입 폼으로
	@GetMapping("member-join")
	public String memberJoinForm() {
		return "member/join_form";
	}
	
	// 회원가입 비즈니스 로직 처리
	@PostMapping("member-join")
	public String memberJoinPro(MemberVO member, Model model, BCryptPasswordEncoder passwordEncoder) {
		
		String securePasswd = passwordEncoder.encode(member.getMember_pwd());
		System.out.println("평문 : " + member.getMember_pwd()); 
		System.out.println("암호문 : " + securePasswd); 
		
		LocalDate today = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String regDate = today.format(dtf);
		
		member.setMember_pwd(securePasswd);
		member.setMember_email(member.getMember_email());
		member.setMember_name(member.getMember_name());
		member.setMember_tel(member.getMember_tel());
		member.setMember_reg_date(regDate);
		
		if(member.getMember_marketing1() == null) {
			member.setMember_marketing1("N");
		}
		if(member.getMember_marketing2() == null) {
			member.setMember_marketing2("N");
		}
		
		int insertCount = memberService.insertMember(member);
		System.out.println(member);
		
		if(insertCount < 1) {
			model.addAttribute("msg", "회원가입에 실패했습니다.");
			return "result_process/fail";
		}
		
		model.addAttribute("msg", "클래스윌 회원가입을 환영합니다.");
		model.addAttribute("targetURL", "member-login");
		return "result_process/success";
	}
	
	// 회원 로그인 폼으로
	@GetMapping("member-login")
	public String memberLoginForm() {
		return "member/login_form";
	}
	
	// 회원 로그인 비즈니스 로직 처리
	@PostMapping("member-login")
	public String memberLoginPro(MemberVO member, Model model, BCryptPasswordEncoder passwordEncoder) {
		
		MemberVO dbMember = memberService.selectMember(member);
		
		if(dbMember != null && dbMember.getMember_status().equals("2")) {
			model.addAttribute("msg", "탈퇴한 회원입니다.");
			return "result_process/fail";
		} else if(dbMember != null && dbMember.getMember_status().equals("3")) {
			model.addAttribute("msg", "휴면 회원입니다.");
			model.addAttribute("targetURL", "");
			return "result_process/success";
		} else if(dbMember == null || !passwordEncoder.matches(member.getMember_pwd(), dbMember.getMember_pwd())) { // 로그인 실패
			model.addAttribute("msg", "이메일 또는 비밀번호를 확인해 주세요.");
			return "result_process/fail";
		} else {
			session.setAttribute("member", dbMember);
			model.addAttribute("member", dbMember);
			System.out.println();
			
			return "redirect:/";
			
		}
		
		
	}
	
	// 멤버 로그아웃
	@GetMapping("member-logout")
	public String memberLogout() {
		session.invalidate();
		return "redirect:/";
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
