package com.ourcompany.class247.creator.creator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CreatorController {
	
	
	
	
	/** 1. 크리에이터 신청 폼으로 이동 
	 * @return
	 */
	@RequestMapping("creatorFormView.do")
	public String creatorFormView() {
		return "creator/creator/creRegistration";
	}

}
