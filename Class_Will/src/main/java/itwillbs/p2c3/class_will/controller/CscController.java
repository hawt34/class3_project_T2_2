package itwillbs.p2c3.class_will.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import itwillbs.p2c3.class_will.service.AdminService;

@Controller
public class CscController {
	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("csc")
	public String cscMain(@RequestParam(defaultValue = "notice") String type, Model model,@RequestParam(defaultValue = "1") String pageNum) {
		int pageSize = 10;
		int startRow = (Integer.parseInt(pageNum) - 1) * pageSize;
		int totalCount = adminService.getBoardCount("notice");
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		String common2_value	 = "";
		String common2_code = "";
		String common1_code 	= "";
		//카테고리
		List<Map<String, Object>> category = adminService.getBoardCategory("NTC");
		
		//글 리스트
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("type", type);
		params.put("startRow", startRow);
		params.put("limit", pageSize);
		List<Map<String, Object>> data = adminService.getCscList(params);
		
		
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
		}
		
		model.addAttribute("category", category);
		model.addAttribute("list", data);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("type", type);
		
		if(type.equals("notice")) {
			return "csc/csc_notice";
		}else if(type.equals("faq")) {
			return "csc/csc_faq";
		}
		
		return "";
	}
	
	@GetMapping("csc-detail")
	public String csctest() {
		
		return "csc/csc_notice_detail";
	}
	
	@GetMapping("csc-faq")
	public String csctest1() {
		
		return "csc/csc_faq";
	}
	
	@GetMapping("csc-oto")
	public String csctest2() {
		
		return "csc/csc_oto";
	}
	
	
	@GetMapping("use-info")
	public String useInfo() {
		
		return "csc/csc_use_info";
	}
	
	@GetMapping("privacy-info")
	public String privacyInfo() {
		
		return "csc/csc_privacy_info";
	}
	
	@GetMapping("refund-info")
	public String refundInfo() {
		
		return "csc/csc_refund_info";
	}
	
	
	
}
