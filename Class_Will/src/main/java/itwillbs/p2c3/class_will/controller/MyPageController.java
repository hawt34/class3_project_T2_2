package itwillbs.p2c3.class_will.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MyPageController {
	@GetMapping("my-page")
	public String myPage() {
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
    public String handleFileUpload(@RequestParam("imageFile") MultipartFile file,
                                   HttpSession session,
                                   HttpServletRequest request,
                                   Model model) {
//        String id = (String) session.getAttribute("sId");
//
//        if (id == null || !id.equals("admin")) {
//            model.addAttribute("msg", "잘못된 접근입니다");
//            model.addAttribute("targetURL", "member_login");
//            return "error/fail";
//        }
		
		
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		System.out.println("실제 업로드 경로(session): " + saveDir);
		// 실제 업로드 경로
		
		String subDir = "";
		LocalDate today = LocalDate.now();
		String datePattern = "yyyy/MM/dd";
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern(datePattern);
		System.out.println(today.format(dtf));
		subDir = today.format(dtf);
		
		saveDir += "/" + subDir;
		System.out.println(saveDir);
		
		Path path = Paths.get(saveDir);
		
		try {
			// Files 클래스의 createDirectories() 메서드 호출하여 실제 경로 생성
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		//나중에 파일연결
		String uuid = UUID.randomUUID().toString();
		  if (!file.isEmpty()) {
	            try {
	                String originalFilename = file.getOriginalFilename();
	                String fileName = UUID.randomUUID().toString().substring(0, 8) + "_" + originalFilename;
	                String savePath = saveDir + "/" + fileName;

	                file.transferTo(new File(savePath));
	                System.out.println("파일이 성공적으로 저장되었습니다: " + savePath);

	                // 모델에 파일 경로를 추가하여 뷰에서 접근할 수 있게 함
	                model.addAttribute("filePath", subDir + "/" + fileName);
	                return "redirect:/my-page";
	            } catch (IOException e) {
	                e.printStackTrace();
	                model.addAttribute("msg", "파일 업로드 중 오류가 발생했습니다.");
	                return "error/fail";
	            }
	        }

	
			
			
			
//		MultipartFile mfile2 = event.getEvent_imageFile();
//		
//		event.setEvent_thumbnail("");
//		event.setEvent_image("");
//		
//		String fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + file.getOriginalFilename();
//		
//		if(!file.getOriginalFilename().equals("")) {
//			event.setEvent_thumbnail(subDir + "/" + fileName1);      
//		}
//		
		
//		System.out.println("업로드 파일명: " + event.getEvent_image());
		
		//int insertCount = service.InsertEvent(event);
		
//		if(insertCount > 0) {
//			try {
//				if(!mfile1.getOriginalFilename().equals("")) {
//					mfile1.transferTo(new File(saveDir, fileName1));
//				}
//				
//			
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			
//			return "redirect:/admin_event";
//		} else {
//			return "error/fail";
//		}
//	   

        return "redirect:/my-page"; // 업로드 결과를 보여줄 JSP 페이지 이름
    }
}	
	
	


