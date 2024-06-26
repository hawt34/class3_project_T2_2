package itwillbs.p2c3.class_will.handler;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Component
public class WillUtils {
	private boolean isSuccess;
	private Model model;
	private String msg;
	private boolean isClose;
	
	
	public static String checkDeleteSuccess(boolean isSuccess, Model model, String msg, boolean isClose) {
		if(isSuccess) {
			model.addAttribute("msg", msg);
			
			if(isClose) {
				model.addAttribute("isClose", "true");
			}
			return "result_process/success";
		}else {
			model.addAttribute("msg", msg);
			
			if(isClose) {
				model.addAttribute("isClose", "true");
			}
			return "result_process/fail";
		}
		 
	}
	
	public static String checkDeleteSuccess(boolean isSuccess, Model model, String msg, boolean isClose, String targetURL) {
		if(isSuccess) {
			model.addAttribute("msg", msg);
			
			if(isClose) {
				model.addAttribute("isClose", "true");
			}
			model.addAttribute("targetURL", targetURL);
			
			return "result_process/success";
		}else {
			model.addAttribute("msg", msg);
			
			if(isClose) {
				model.addAttribute("isClose", "true");
			}
			model.addAttribute("targetURL", targetURL);
			
			return "result_process/success";
		}
		
	}
}
