package com.ourcompany.class247.creatorCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CreatorCenterController {
	

	

	  @RequestMapping("courseFormView.do") 
	  public String courseFormView() {
		  return "creator/course/coRegistration"; 
	}

	

	
	@RequestMapping("creNoticeList.do")
	public String notictList() {
		return "inquiry/cInquiryList";
	}
	

	



}
