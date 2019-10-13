package com.ourcompany.class247.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {

	@RequestMapping("adminMain.do")
	public String adminMainView() {
		
		return "admin/adminMain";
		
	}
	
	
	
}
