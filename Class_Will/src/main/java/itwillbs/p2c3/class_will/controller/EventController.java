package itwillbs.p2c3.class_will.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import itwillbs.p2c3.class_will.service.AdminService;

@Controller
public class EventController {
	@Autowired
	private AdminService adminService;
	
	@GetMapping("event")
	public String eventMain(Model model) {
		List<Map<String, String>> list = adminService.getEventList();
		model.addAttribute("list", list);
		
		
		return "event/event_main";
	}
	
	@GetMapping("eventDetail")
	public String eventDetail() {
		return "event/event_detail";
	}
}
