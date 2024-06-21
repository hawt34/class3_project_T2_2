package itwillbs.p2c3.class_will.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import itwillbs.p2c3.class_will.handler.CommonUtils;
import itwillbs.p2c3.class_will.service.AdminService;
import itwillbs.p2c3.class_will.service.MemberService;
import itwillbs.p2c3.class_will.service.MyPageService;
import itwillbs.p2c3.class_will.vo.MemberVO;

@Controller
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	private MemberService memberService;

	@Autowired
	private HttpSession session;

	@Autowired
	private AdminService adminService;

	@Autowired
	private MyPageService myPageService;

	@Autowired
	private CommonUtils cUtils;

	@GetMapping("my-page")
	public String myPage(Model model) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		System.out.println("여기는 마이페이지" + member);
//		if (member == null) {
//            return "redirect:/";
//        }
		// System.out.println("멤버코드" +member.getMember_code());
		// 나중에 여기에 조건 걸어서 로그인여부 확인할 예정

		return "mypage/mypage";

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

	// 내가 쓴 리뷰
	@GetMapping("my-review")
	public String myReview(Model model) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		// System.out.println("리뷰쪽 시작"+member.getMember_code());

		List<Map<String, String>> memberReviews = myPageService.getMemberReviews(member.getMember_code());

		model.addAttribute("member", member);
		model.addAttribute("memberReviews", memberReviews);
		// System.out.println(memberReviews);

		return "mypage/mypage-review";
	}

	// 리뷰 수정
	@GetMapping("edit-review-page")
	public String editReviewPage(@RequestParam("review_code") String reviewCode, Model model) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		model.addAttribute("member", member);

		Map<String, String> review = myPageService.getReviewByCode(reviewCode);

		// 리뷰 작성자 검증
//	    if (!member_code.equals(String.valueOf(review.get("member_code")))) {
//	        throw new SecurityException("리뷰를 수정할 권한이 없습니다.");
//	    }

		model.addAttribute("review", review);
		System.out.println("이건 수정할 때 데리고 오는 특정리뷰 1건" + review);
		return "mypage/mypage-review-modify"; // 리뷰 수정 페이지
	}

	@PostMapping("edit-review")
	public String editReview(Model model, @RequestParam Map<String, String> formData) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		model.addAttribute("member", member);

		System.out.println("여기요 여기!formdata: " + formData);
		int updateCount = myPageService.updateReview(formData);

		if (updateCount > 0) {
			return "redirect:/my-review";
		} else {
			model.addAttribute("msg", "리뷰수정 실패");
			return "error/fail";
		}

	}
	//리뷰삭제
	@PostMapping("delete-review")
	public String deleteReview(Model model,@RequestParam Map<String, String> map) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		model.addAttribute("member", member);
		
		 String class_review_code = map.get("review_code");
		System.out.println(class_review_code);
		
		int deleteCount = myPageService.deleteReview(class_review_code);
		if (deleteCount > 0) {
			
			return "redirect:/my-review";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "error/fail";
		}
	
	}
	

	// 크레딧관련
	@GetMapping("my-credit")
	public String myCredit() {
		return "mypage/mypage-credit";
	}

	// 이미지 업로드 관련
	@RequestMapping("upload_image")
	public String handleFileUpload(@RequestParam("imageFile") MultipartFile file, HttpServletRequest request,
			Model model) {
		// System.out.println(file); 파일 넘어오는지 확인
//	        String id = (String) session.getAttribute("sId");
		//
//	        if (id == null || !id.equals("admin")) {
//	            model.addAttribute("msg", "잘못된 접근입니다");
//	            model.addAttribute("targetURL", "member_login");
//	            return "error/fail";
//	        }
		MemberVO member = (MemberVO) session.getAttribute("member");
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
		System.out.println("파일네임" + fileName1);

		if (!file.getOriginalFilename().equals("")) {
			member.setMember_img(fileName1);
		}
		System.out.println("저장파일" + member.getMember_img());

		System.out.println("업로드 파일명: " + member.getMember_imageFile());

		int updateCount = myPageService.updateMemberImg(member);

		if (updateCount > 0) {
			try {
				if (!file.getOriginalFilename().equals("")) {
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

	// 이미지 삭제 관련 실제삭제는 아니고 null값을 줘서 업데이트하는 개념.
	@RequestMapping("delete_image")
	public String resetImg() {
		MemberVO member = (MemberVO) session.getAttribute("member");
		member.setMember_img(null);
		int updateCount = myPageService.updateMemberImg(member);

		if (updateCount > 0) {
			return "redirect:/my-page";
		} else {
			return "error/fail";
		}
	}
	
	//회원정보수정
	@GetMapping("my-modify")
	public String myModify(Model model) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		model.addAttribute("member", member);
		
//		<update id="updateMember">
// 		UPDATE member
//		SET
//			<!-- 새 패스워드(passwd) 입력 여부에 따라 패스워드 변경 여부 결정 -->
//		<if test="member_pwd != null and !member_pwd.equals('')">
//			member_pwd = #{member_pwd},
//		</if>
//			member_birth = #{member_birth}
//			, member_addr = #{member_addr}
//			, member_email = #{member_email}
//			, member_tel = #{member_tel}
//			, member_movie_genre = #{member_movie_genre}
//		WHERE
//			member_id = #{member_id}
//    
//		</update>
//		
		return "mypage/mypage-modify";
	}
	
}
