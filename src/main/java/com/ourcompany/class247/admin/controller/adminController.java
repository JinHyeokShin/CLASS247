package com.ourcompany.class247.admin.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.ReplyPagination;
import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.member.model.service.MemberService;


@Controller
public class adminController {
	
	@Autowired
	private CourseService coService;
	
	@Autowired
	private MemberService mService;

	@Autowired
	private CreatorService creService;

	
	
	@RequestMapping("adminMain.do")
	public ModelAndView adminMainView(ModelAndView mv) {
		
		int tMem = mService.selectTMem();
		int tCre = creService.selectTCre();
		int oCou = coService.selectOCou();
		int iCou = coService.selectICou();
		int mMem = mService.selectMMem();
		int mCre = creService.selectMCre();
		int mCou = coService.selectMCou();
		int mPrice = coService.selectMPrice();
		
		ArrayList<SingleCourse> coList = coService.awaitSelectList();
		
		ArrayList<Creator> creList = creService.awaitSelectList();
		
		mv.addObject("tMem", tMem).addObject("tCre", tCre).addObject("oCou", oCou).addObject("iCou",iCou).addObject("mMem", mMem).addObject("mCre", mCre).addObject("mCou", mCou).addObject("mPrice", mPrice);
		mv.addObject("coList", coList).addObject("creList").setViewName("admin/adminMain");
		
		return mv;
		
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
		
		PageInfo pi = ReplyPagination.getPageInfo(currentPage, peceiptCount);
		
		ArrayList<SingleCourse> peceipt = coService.peceiptList(pi);
		
		int result = coService.checkPeceipt();
		
		int nYear;
		int nMonth;
		
		 Calendar calendar = new GregorianCalendar(Locale.KOREA);
		    nYear = calendar.get(Calendar.YEAR);
		    nMonth = calendar.get(Calendar.MONTH);
		    
		if(nMonth == 0) {
			nYear = nYear-1;
			nMonth = 12;
		}
		
		String today = nYear + "년" + nMonth +"월";


		
		mv.addObject("today", today).addObject("check", result).addObject("list", peceipt).addObject("peceiptCount", peceiptCount).addObject("pi", pi).setViewName("admin/stat/peceiptResultList");
		
		return mv;
		
	}
	
	@RequestMapping("aAPeceipt.do")
	public ModelAndView aAPeceipt(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
		
		int aPeceiptCount = coService.aPeceiptCount();
		
		PageInfo pi = ReplyPagination.getPageInfo(currentPage, aPeceiptCount);
		
		ArrayList<SingleCourse> peceipt = coService.aPeceiptList(pi);
		
		

		mv.addObject("list", peceipt).addObject("peceiptCount", aPeceiptCount).addObject("pi", pi).setViewName("admin/stat/aPeceiptList");
		
		return mv;
		
	}
	
	@RequestMapping("insertPeceipt.do")
	public String insertPeceipt() {
		
		ArrayList<SingleCourse> peceipt = coService.peceiptList();
		
		for(int i = 0 ; i < peceipt.size(); i++) {
		
			int result = coService.insertPeceipt(peceipt.get(i));
			
		}
		
		
		
		return "redirect:aAPeceipt.do";
		
	}
	
	
	@RequestMapping("logger.do")
	public String logger() {
		
		int result = coService.logger();
		
		return "redirect:adminMain.do";
		
	}
	
	@RequestMapping("checkLogger.do")
	public ModelAndView checkLogger(ModelAndView mv) {
		
		int result = coService.checkLogger();
		
		mv.addObject("checkLogger", result).setViewName("admin/aMenubar");
		
		return mv;
	}
	

}
