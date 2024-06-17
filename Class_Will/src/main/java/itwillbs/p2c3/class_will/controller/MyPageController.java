package itwillbs.p2c3.class_will.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import itwillbs.p2c3.class_will.service.AdminService;
import itwillbs.p2c3.class_will.service.MyPageService;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Controller
public class MyPageController {
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MyPageService myPageService;

	@GetMapping("my-page")
	public String myPage(String member_code, Model model) {
		member_code = "1000";
		Map<String, String> member = adminService.getMemberInfo(member_code);
		//일단 임시로 사용
		
		model.addAttribute("member", member);
		System.out.println(member);
		return "mypage/mypage";
			
	}
	
	// 취향보기
	@GetMapping("my-pre")
	public String myPre() {
		return "mypage/mypage-pre";
	}
	// 위시리스트
	@GetMapping("my-wish")
	public String myWish() {
		return "mypage/mypage-wish";
	}
	// 마이클래스
	@GetMapping("my-class")
	public String myClass() {
		return "mypage/mypage-class";
	}
	//내가 쓴 리뷰
	@GetMapping("my-review")
	public String myReview() {
		return "mypage/mypage-review";
	}
	//내가 쓴 리뷰
	@GetMapping("my-credit")
	public String myCredit() {
		return "mypage/mypage-credit";
	}
	
	//이미지 업로드 관련
		@RequestMapping("upload_image")
	    public String handleFileUpload(@RequestParam("imageFile") MultipartFile file, HttpSession session,
	                                   HttpServletRequest request, Model model, MemberVO member) {
				//System.out.println(file); 파일 넘어오는지 확인
//	        String id = (String) session.getAttribute("sId");
	//
//	        if (id == null || !id.equals("admin")) {
//	            model.addAttribute("msg", "잘못된 접근입니다");
//	            model.addAttribute("targetURL", "member_login");
//	            return "error/fail";
//	        }
			member.setMember_code(1000);
			member.setMember_imageFile(file);
			String uploadDir = "/resources/upload";
			String saveDir = session.getServletContext().getRealPath(uploadDir);
			System.out.println("실제 업로드 경로(session): " + saveDir);
			// 실제 업로드 경로
			
			
			System.out.println(saveDir);
			
			Path path = Paths.get(saveDir);
			
			try {
				// Files 클래스의 createDirectories() 메서드 호출하여 실제 경로 생성
				Files.createDirectories(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
			member.setMember_img("");
					
			String fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + file.getOriginalFilename();
			System.out.println("파일네임"+fileName1);
			
			
			if(!file.getOriginalFilename().equals("")) {
				member.setMember_img(fileName1);      
			}
			System.out.println("저장파일" +member.getMember_img());

			System.out.println("업로드 파일명: " + member.getMember_imageFile());
			
			int updateCount = myPageService.updateMemberImg(member);
			
			if(updateCount > 0) {
				try {
					if(!file.getOriginalFilename().equals("")) {
						file.transferTo(new File(saveDir, fileName1));
					}
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				} 
				
				return "redirect:/my-page";
			} else {
				return "error/fail";
			}
		}
		
	}
			  
			

