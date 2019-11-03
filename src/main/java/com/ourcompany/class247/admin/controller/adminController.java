package com.ourcompany.class247.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.SingleCourse;


@Controller
public class adminController {
	
	@Autowired
	private CourseService coService;
	
	
	@RequestMapping("adminMain.do")
	public String adminMainView() {
		
		
		
		return "admin/adminMain";
		
	}
	
	@RequestMapping("aStat.do") 
	public String adminStat() {

		int categoryNum = 0;
		
		ArrayList<SingleCourse> personStat = coService.personStat(categoryNum);

		
		SingleCourse pes = new AStat().perStat(personStat);
		
		
		return "admin/stat/stat";

	}
	
	@RequestMapping("aPeceipt.do")
	public ModelAndView aPeceipt(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
		
		int peceiptCount = coService.peceiptCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, peceiptCount);
		
		ArrayList<SingleCourse> peceipt = coService.peceiptList(pi);
		
		
		int count = peceipt.size();
		
		int sum = 0;
		
		for(int i = 0 ; i < peceipt.size() ; i++) {
			
			sum += peceipt.get(i).getLoveCount();
			
		}
		
		mv.addObject("count", count).addObject("sum", sum).addObject("list", peceipt).addObject("peceiptCount", peceiptCount).setViewName("admin/stat/peceiptResultList");
		
		return mv;
		
	}
	
	@RequestMapping("aAPeceipt.do")
	public ModelAndView aAPeceipt(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
		
		int aPeceiptCount = coService.aPeceiptCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, aPeceiptCount);
		
		ArrayList<SingleCourse> peceipt = coService.aPeceiptList(pi);
		

		mv.addObject("list", peceipt).addObject("peceiptCount", aPeceiptCount).setViewName("admin/stat/aPeceiptList");
		
		return mv;
		
	}
	
	@RequestMapping("insertPeceipt.do")
	public String insertPeceipt() {
		
		
		
		
		return "redirect:aAPeceipt.do";
		
	}
	

}
