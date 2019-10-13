package com.ourcompany.class247.creatorCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ourcompany.class247.creator.creator.model.vo.Creator;

@Controller
public class CreatorCenterController {
	
	@Autowired
	//private CtreatorCenterService ccService;

	
//	@RequestMapping("cMainView.do")
//	public String goToMain() { 
//		return "creator/creatorCenter";
//	}
	
	@RequestMapping("courseFormView.do")
	public String courceFormView() {
		return "creator/course/coRegistration";
	}
	
	
	@RequestMapping("cChattingView.do")
	public String chattingView() {
		return "creator/cChat";
	}
	
	@RequestMapping("creNoticeList.do")
	public String notictList() {
		return "creator/creNoticeList";
	}
	
	@RequestMapping("coManageView.do")
	public String coManageView() {
		return "creator/course/coManagement";
	}

}
