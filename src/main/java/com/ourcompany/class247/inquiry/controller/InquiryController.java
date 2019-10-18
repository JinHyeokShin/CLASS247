package com.ourcompany.class247.inquiry.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.inquiry.model.service.InquiryService;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Controller
public class InquiryController {

	@Autowired
	private InquiryService iService;
	
	@RequestMapping("inquiryList.do")
	public ModelAndView inquiryList(HttpServletRequest request, ModelAndView mv) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		
		ArrayList<Inquiry> inquiryList = iService.getInquiryList(creNum);
		
		for(Inquiry i : inquiryList) {
			System.out.println(i);
		}
		
		mv.addObject("iList", inquiryList);
		mv.setViewName("creator/inquiry/cInquiryList");
		
		return mv;
	}
}
