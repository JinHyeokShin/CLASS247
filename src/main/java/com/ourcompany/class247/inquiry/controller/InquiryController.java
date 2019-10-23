package com.ourcompany.class247.inquiry.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.inquiry.model.service.InquiryService;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Controller
public class InquiryController {

	@Autowired
	private InquiryService iService;
	
	
	/** 1. 문의게시글 목록 
	 * @param request
	 * @param mv
	 * @return
	 */
	@RequestMapping("inquiryList.do")
	public ModelAndView inquiryList(HttpServletRequest request, ModelAndView mv, 
								@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		int inquiryCount = iService.getInquiryCount(creNum);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, inquiryCount);
		ArrayList<Inquiry> inquiryList = iService.getInquiryList(pi, creNum);
		

		mv.addObject("iList", inquiryList).addObject("pi", pi);
		mv.setViewName("creator/inquiry/cInquiryList");
		
		return mv;
	}
	
	@RequestMapping("adminInquriyList.do")
	public ModelAndView selectList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		
		int listCount = iService.getAdminInquiryList();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Inquiry> list = iService.selectAdminInquiryList(pi);

		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("admin/inquiry/aInquiryList");
		
		return mv;
		
	}
}
