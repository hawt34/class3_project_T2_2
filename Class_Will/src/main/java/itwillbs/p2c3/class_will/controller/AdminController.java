package itwillbs.p2c3.class_will.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import itwillbs.p2c3.class_will.handler.CommonUtils;
import itwillbs.p2c3.class_will.service.AdminService;
import itwillbs.p2c3.class_will.service.ExcelService;
import itwillbs.p2c3.class_will.vo.CategoryData;
import itwillbs.p2c3.class_will.vo.GroupedData;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private ExcelService excelService;
	
	@Autowired
	private CommonUtils cUtils;
	
	
	@GetMapping("admin")
	public String admin() {
		
		return "admin/admin_main";
	}
	
	@GetMapping("admin-member")
	public String adminMain(@RequestParam(defaultValue = "일반회원") String type, Model model) {
		List<Map<String, String>> member_list = null;
		String code_value = "member_type";
		String common1_code = adminService.getCommonCode(code_value);
		int common2_code = adminService.getCommon2Code(common1_code, type);
		Map<String, Object> params = cUtils.commonProcess("MEMBER", common2_code);
		
		member_list = adminService.getMemberList(params);
		
		List<JSONObject> jo_list = new ArrayList<JSONObject>(); 
		
		for(Map<String, String> member : member_list) {
            JSONObject jo = new JSONObject(member);
            jo_list.add(jo);
		}
		
		model.addAttribute("jo_list", jo_list);
		model.addAttribute("tableName", "MEMBER");
		
		return "admin/admin_member";
	}
	
	@GetMapping("admin-class")
	public String adminClass(Model model) {
		List<Map<String, Object>> class_list = adminService.getClassList();
		
		List<JSONObject> jo_list = new ArrayList<JSONObject>(); 
		
		for(Map<String, Object> class1 : class_list) {
            JSONObject jo = new JSONObject(class1);
            jo.put("class_category", class1.get("class_big_category") + "/" + class1.get("class_small_category"));
            jo_list.add(jo);
		}
		
		model.addAttribute("tableName", "class");
		model.addAttribute("jo_list", jo_list);
		return "admin/admin_class";
	}
	
	@GetMapping("admin-category")
	public String adminCategory(Model model) {
	    List<Map<String, Object>> data = new ArrayList<>();
	    Map<String, List<Map<String, Object>>> categoryData = adminService.getCategoryData();
	    List<Map<String, Object>> bigCategory = categoryData.get("bigCategory");
	    List<Map<String, Object>> smallCategory = categoryData.get("smallCategory");
	    
	    // 대분류에 소분류를 추가
	    for (Map<String, Object> bcg : bigCategory) {
	        Map<String, Object> map = new HashMap<>();
	        String bigValue = (String) bcg.get("code_value");
	        Integer common2_code = (Integer) bcg.get("common2_code"); // Integer로 변환
	        map.put("id", common2_code);
	        map.put("largeCategory", bigValue);
	        map.put("hidden", bcg.get("code_hide").equals("N") ? false : true);
	        
	        // 소분류 데이터를 _children 배열에 추가
	        List<Map<String, Object>> children = new ArrayList<>();
	        for (Map<String, Object> scg : smallCategory) {
	            Integer parent_code = (Integer) scg.get("common2_code"); // Integer로 변환
	            if (common2_code.equals(parent_code)) {
	                Map<String, Object> map2 = new HashMap<>();
	                map2.put("id", scg.get("common3_code"));
	                map2.put("largeCategory", bigValue);
	                map2.put("smallCategory", scg.get("code_value"));
	                map2.put("hidden", scg.get("code_hide").equals("N") ? false : true);
	                children.add(map2);
	            }
	        }
	        if (!children.isEmpty()) {
	            map.put("_children", children);
	        }
	        data.add(map);
	    }
	    model.addAttribute("jo_list", new Gson().toJson(data)); // JSON 형식으로 변환하여 전달
	    return "admin/admin_category";
	}
	
	@GetMapping("admin-csc")
	public String adminCsc(Model model, String type) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("type", type);
		List<Map<String, Object>> data = adminService.getCscList(params);
		String common2_value	 = "";
		String common2_code = "";
		String common1_code 	= "";
		System.out.println(data);
		for (Map<String, Object> map : data) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getKey().contains("_category")) {
                	System.out.println("ssssssssssssssssssss : " + entry.getValue());
                	common2_code = (String)entry.getValue();
                }
            }
            switch (type) {
    		case "notice" 	: common1_code = "NTC"; break;
    		case "faq" 		: common1_code = "FQC"; break;
    		case "event"	: common1_code = ""; break;
        }
            Integer common2_code_int = Integer.parseInt(common2_code);
            common2_value = adminService.getCommon2Value(common1_code, common2_code_int);
            map.put(type + "_category", common2_value);
            
            
            map.put("hidden", map.get(type + "_hide").equals("Y") ? true : false); 
            
            
            System.out.println(map);
		}
		
		List<JSONObject> jo_list = new ArrayList<JSONObject>(); 
		
		for(Map<String, Object> board : data) {
            JSONObject jo = new JSONObject(board);
            jo_list.add(jo);
		}
		
		model.addAttribute("jo_list", jo_list);
		
		return "admin/admin_csc";
	}
	
	
	@GetMapping("admin-csc-detail")
	public String adminCscDetail() {
		return "admin/admin_csc_detail";
	}
	
	@GetMapping("admin-csc-regist")
	public String adminCscRegist(String type, Model model) {
		model.addAttribute("type", type);
		String code = "";
		switch (type) {
		case "notice" 	: code = "NTC"; break;
		case "faq" 		: code = "FQC"; break;
		case "event"	: break;
		}
		List<Map<String, Object>> category =  adminService.getBoardCategory(code);
		
		model.addAttribute("category", category);
		
		return "admin/admin_csc_form";
	}
	
	@GetMapping("admin-member-detail")
	public String adminMemberDetail(String member_code, Model model) {
		Map<String, Object> params =  cUtils.commonProcess("MEMBER", member_code);
		Map<String, String> member = adminService.getMemberInfo(params);
		
		model.addAttribute("member", member);
		
		return "admin/admin_member_detail";
	}
	
	@GetMapping("admin-class-detail")
	public String adminClassDetail(String class_code, Model model) {
		Map<String, String> class1 = adminService.getClassInfo(class_code);
		System.out.println(class1);
		model.addAttribute("classInfo", class1);
		return "admin/admin_class_detail";
	}
	
    @GetMapping("/downloadExcel")
    public ResponseEntity<byte[]> downloadExcel(
            @RequestParam String tableName, 
            @RequestParam String title,
            @RequestParam(required = false) boolean currentPageOnly) throws IOException {
    	// DB에서 컬럼명을 가져옴
        List<String> columns = adminService.getColumnNames(tableName);
        
        List<Map<String, Object>> data;
//        if (currentPageOnly) {
//            data = adminService.getCurrentPageData(tableName); // 현재 페이지 데이터 가져오기
//        } else {
            data = adminService.getAllData(tableName); // 전체 데이터 가져오기
//        }
        
        byte[] excelBytes = excelService.createExcel(title, columns, data);

        HttpHeaders headers = new HttpHeaders();
        // 파일명에 확장자를 명시적으로 추가
        String encodedTitle = URLEncoder.encode(title + ".xlsx", StandardCharsets.UTF_8.toString());

        headers.add("Content-Disposition", "attachment; filename=\"" + encodedTitle + "\"");
        
        return new ResponseEntity<>(excelBytes, headers, HttpStatus.OK);
    }
    
    @GetMapping("/excelFormDownload")
    public ResponseEntity<byte[]> excelFormDownload(
    		@RequestParam String tableName, 
            @RequestParam String title) throws IOException  {
    	List<String> columns = adminService.getColumnNames(tableName);
    	List<String> dataTypes = adminService.getColumnDataTypes(tableName);
    	
        if(columns.size() == dataTypes.size()) { // 유효성?
            for(int i = 0; i < columns.size(); i++) {
            	String column = columns.get(i);
                columns.set(i, column + "/" + dataTypes.get(i));
            }
        }
        
        for(int i = 0; i < columns.size(); i++) {
	        if(columns.get(i).contains("_code")) {
	        	columns.remove(i);
	        }
        }
        
        byte[] excelBytes = excelService.createExcelForm(title, columns);
        
        
    	LocalDateTime now = LocalDateTime.now();
    	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("YYYYMMDD");
    	String nowt = now.format(dtf);
    	
    	HttpHeaders headers = new HttpHeaders();
    	String encodedTitle = URLEncoder.encode(tableName + "/" + title + "/" + nowt + ".xlsx", StandardCharsets.UTF_8.toString());
    	headers.add("Content-Disposition", "attachment; filename=\"" + encodedTitle + "\"");
    	
    	return new ResponseEntity<>(excelBytes, headers, HttpStatus.OK);
    }
    
    @GetMapping("admin-test")
    public String adminTest(Model model) {	    
    List<Map<String, Object>> data = new ArrayList<>();
    Map<String, List<Map<String, Object>>> categoryData = adminService.getCategoryData();
    List<Map<String, Object>> bigCategory = categoryData.get("bigCategory");
    List<Map<String, Object>> smallCategory = categoryData.get("smallCategory");

    // 대분류에 소분류를 추가
    for (Map<String, Object> bcg : bigCategory) {
        Map<String, Object> map = new HashMap<>();
        String bigValue = (String) bcg.get("code_value");
        Integer common2_code = (Integer) bcg.get("common2_code"); // Integer로 변환
        map.put("id", common2_code);
        map.put("largeCategory", bigValue);
        map.put("hidden", bcg.get("code_hide").equals("N") ? false : true);
        
        // 소분류 데이터를 _children 배열에 추가
        List<Map<String, Object>> children = new ArrayList<>();
        for (Map<String, Object> scg : smallCategory) {
            Integer parent_code = (Integer) scg.get("common2_code"); // Integer로 변환
            if (common2_code.equals(parent_code)) {
                Map<String, Object> map2 = new HashMap<>();
                map2.put("id", scg.get("common3_code"));
                map2.put("largeCategory", bigValue);
                map2.put("smallCategory", scg.get("code_value"));
                map2.put("hidden", scg.get("code_hide").equals("N") ? false : true);
                children.add(map2);
            }
        }
        if (!children.isEmpty()) {
            map.put("_children", children);
        }
        data.add(map);
    }
    	model.addAttribute("jo_list", new Gson().toJson(data)); // JSON 형식으로 변환하여 전달
    	return "admin/admin_test";
    }
    
    @ResponseBody
    @PostMapping(value = "insert", consumes = "application/json", produces = "application/json")
    public Map<String, Object> categoryInsert(@RequestBody CategoryData data) {
    	Integer common2_code = null;
    	 // updateRows largeCategory로 그룹화
        try {
			Map<String, List<Map<String, Object>>> groupedData = data.getUpdatedRows().stream()
			        .collect(Collectors.groupingBy(row -> (String) row.get("largeCategory")));
			// 그룹화한 데이터를 묶기
			List<GroupedData> sortedData = groupedData.entrySet().stream()
			        .sorted(Map.Entry.comparingByKey())
			        .map(entry -> new GroupedData(entry.getKey(), entry.getValue()))
			        .collect(Collectors.toList());
			for(GroupedData gd : sortedData) {
				common2_code = adminService.getCommon2Code("CLC", gd.getLargeCategory());
				for(Map<String, Object> rowMap : gd.getRows()) {
					rowMap.put("common2_code", common2_code);
					adminService.updateCategoryData(rowMap);
				}
			}
			//Update 완료
			
			//Insert 시작
			groupedData = data.getCreatedRows().stream()
			        .collect(Collectors.groupingBy(row -> (String) row.get("largeCategory")));
			sortedData = groupedData.entrySet().stream()
			        .sorted(Map.Entry.comparingByKey())
			        .map(entry -> new GroupedData(entry.getKey(), entry.getValue()))
			        .collect(Collectors.toList());
			for(GroupedData gd : sortedData) {
				common2_code = adminService.getCommon2Code("CLC", gd.getLargeCategory());
				for(Map<String, Object> rowMap : gd.getRows()) {
					int max_code = adminService.getMaxCommon3Code(common2_code);
					rowMap.put("common2_code", common2_code);
					rowMap.put("max_code", max_code);
					adminService.insertCategoryData(rowMap);
				}
			}
			//Insert 종료
			
			
			//Delete 시작
			System.out.println("ddddddddddddddddddddd" + data.getDeletedRows());
			groupedData = data.getDeletedRows().stream()
			        .collect(Collectors.groupingBy(row -> (String) row.get("largeCategory")));
			sortedData = groupedData.entrySet().stream()
			        .sorted(Map.Entry.comparingByKey())
			        .map(entry -> new GroupedData(entry.getKey(), entry.getValue()))
			        .collect(Collectors.toList());
			for(GroupedData gd : sortedData) {
				common2_code = adminService.getCommon2Code("CLC", gd.getLargeCategory());
				for(Map<String, Object> rowMap : gd.getRows()) {
					System.out.println("33333333333333333333" + rowMap);
					rowMap.put("common2_code", common2_code);
					adminService.deleteCategoryData(rowMap);
				}
			}
			//Delete 끝
			return Map.of("success", true, "message", "변경 사항이 성공적으로 저장되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			return Map.of("success", false, "message", "변경 사항 적용 실패: " + e.getMessage());
		}
        
        
    }
    
    
    @PostMapping("admin-csc-pro")
    public String noticePro(@RequestParam Map<String, Object> map, Model model) {
    	boolean isInsertSuccess = false;
    	isInsertSuccess = adminService.insertBoard(map);
    	
    	if(!isInsertSuccess) {
    		model.addAttribute("msg", "글 등록 실패!");
    		model.addAttribute("isClose", "true");
    		return "result_process/fail";
    	}
    	
    	return "";
    }
    
    
    // 썸머노트 이미지업로드
//    @ResponseBody
//    @PostMapping("admin-uploadImage")
//    public String uploadImage(@RequestParam("file") MultipartFile file, HttpSession session) {
//        if (file.isEmpty()) {
//            return "{\"url\":\"\"}";
//        }
//
//        String fileURL = "";
//        String uploadDir = "/resources/upload";
//        String saveDir = session.getServletContext().getRealPath(uploadDir);
//        System.out.println("실제 업로드 경로(session): " + saveDir);
//        // 실제 업로드 경로
//
//        String subDir = "";
//        LocalDate today = LocalDate.now();
//        String datePattern = "yyyy/MM/dd";
//
//        DateTimeFormatter dtf = DateTimeFormatter.ofPattern(datePattern);
//        System.out.println(today.format(dtf));
//        subDir = today.format(dtf);
//
//        saveDir += "/" + subDir;
//        System.out.println(saveDir);
//
//        Path path = Paths.get(saveDir);
//
//        try {
//            // Files 클래스의 createDirectories() 메서드 호출하여 실제 경로 생성
//            Files.createDirectories(path);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        String fileName = UUID.randomUUID().toString().substring(0, 8) + "_" + file.getOriginalFilename();
//
//        // 클라이언트가 접근할 수 있는 URL 경로 생성
//        String webUrl = uploadDir + "/" + subDir + "/" + fileName;
//        if (file.getOriginalFilename().equals("")) {
//            webUrl = uploadDir + "/" + subDir + "/" + fileName;
//        }
//
//        try {
//            if (!file.getOriginalFilename().equals("")) {
//                file.transferTo(new File(saveDir, fileName));
//            }
//        } catch (IllegalStateException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        System.out.println(webUrl);
//
//        // JSON 형식으로 반환
//        return "{\"url\":\"" + webUrl.replace("\\", "/") + "\"}";
//        
//    }
	
}
	
