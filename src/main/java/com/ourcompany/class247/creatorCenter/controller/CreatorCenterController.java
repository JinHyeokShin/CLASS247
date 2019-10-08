package com.ourcompany.class247.creatorCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CreatorCenterController {
	
	@Autowired
	//private CtreatorCenterService ccService;

	
	@RequestMapping("cMainView.do")
	public String goToMain() {
		
		return "creator/creatorCenter";
				
	}

}
