package itwillbs.p2c3.class_will.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import itwillbs.p2c3.class_will.service.AdminService;
import itwillbs.p2c3.class_will.service.ExcelService;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private ExcelService excelService;
	
	@GetMapping("admin")
	public String admin() {
		
		return "admin/admin_main";
	}
	
	@GetMapping("admin-member")
	public String adminMain(@RequestParam(defaultValue = "member") String type, Model model) {
		List<Map<String, String>> member_list = null;
		
		switch (type) {
			case "member" : member_list = adminService.getMemberList(type); break;
			case "teacher" : member_list = adminService.getMemberList(type); break;
		}
		
		List<JSONObject> jo_list = new ArrayList<JSONObject>(); 
		
		for(Map<String, String> member : member_list) {
            JSONObject jo = new JSONObject(member);
            jo_list.add(jo);
		}
		
		model.addAttribute("jo_list", jo_list);
		
		return "admin/admin_member";
	}
	
	@GetMapping("admin-class")
	public String adminClass() {
		return "admin/admin_class";
	}
	
	@GetMapping("admin-category")
	public String adminCategory() {
		
		return "admin/admin_category";
	}
	
	@GetMapping("admin-csc")
	public String adminCsc() {
		
		return "admin/admin_csc";
	}
	
	@GetMapping("admin-csc-detail")
	public String adminCscDetail() {
		return "admin/admin_csc_detail";
	}
	
	@GetMapping("admin-member-detail")
	public String adminMemberDetail(String member_code, Model model) {
		Map<String, String> member = adminService.getMemberInfo(member_code);
		
		model.addAttribute("member", member);
		
		return "admin/admin_member_detail";
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
    	
    	HttpHeaders headers = new HttpHeaders();
    	String encodedTitle = URLEncoder.encode(title + ".xlsx", StandardCharsets.UTF_8.toString());
    	headers.add("Content-Disposition", "attachment; filename=\"" + encodedTitle + "\"");
    	
    	return new ResponseEntity<>(excelBytes, headers, HttpStatus.OK);
    }
    
    @ResponseBody
    @PostMapping("uploadData")
    public String uploadData(@RequestParam("tableName") String tableName
    						, @RequestParam("file") MultipartFile file) {
    	logger.info("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<join");
    	
        if (file.isEmpty()) {
            return "파일이 비어있습니다.";
        }
        
        try {
            excelService.processExcelFile(tableName, file);
        } catch (IOException e) {
            e.printStackTrace();
            return "파일 업로드 중 오류가 발생했습니다: " + e.getMessage();
        }
        
        return "파일 업로드 성공";
    }
    
    @ResponseBody
    @PostMapping("/applyChanges")
    public String applyChanges(@RequestParam List<Map<String, String>> mapList) {
        try {
            // 여기서 members 리스트를 데이터베이스에 저장하거나 업데이트하는 로직을 추가합니다.
        	for(int i = 0 ; i < mapList.size();i++) {
        		System.out.println(mapList.get(i).toString());
        	}
        	return "변경 사항이 성공적으로 적용되었습니다.";
        } catch (Exception e) {
            e.printStackTrace();
            return "변경 사항 적용 중 오류가 발생했습니다.";
        }
    }
	
}
	
