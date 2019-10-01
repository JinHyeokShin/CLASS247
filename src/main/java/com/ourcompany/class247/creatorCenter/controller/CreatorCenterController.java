package com.ourcompany.class247.creatorCenter.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class CreatorCenterController {
	
	
	@RequestMapping("main.cr")
	public String goToMain() {
		
		return "creatorCenter";
				
	}

}
