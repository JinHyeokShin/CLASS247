package com.ourcompany.class247.coupon.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.coupon.model.service.CouponService;
import com.ourcompany.class247.coupon.model.vo.Coupon;
import com.ourcompany.class247.coupon.model.vo.GiveCoupon;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.payment.model.service.PaymentService;
import com.ourcompany.class247.payment.model.vo.TakeCourse;
@Controller
public class CouponController {

	@Autowired
	private CouponService cService;
	
	@Autowired
	private PaymentService pService;
	
	
	@RequestMapping("memCoupon.do")
	public ModelAndView memCoupon(HttpServletRequest request, ModelAndView mv,@RequestParam(value="currentpage", required=false, defaultValue="1")int currentPage){
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		int listCount = cService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<GiveCoupon> couponlist = cService.listCoupon(memNum, pi);
		
		mv.addObject("pi",pi).addObject("couponlist", 	couponlist);
		mv.setViewName("user/member/memCoupon");
		
		return mv;
	}
	
	@RequestMapping("aCoupon.do")
	public ModelAndView aCouponList(ModelAndView mv) {
		
		ArrayList<Coupon> list = cService.selectCouponList();
		
		mv.addObject("list", list).setViewName("admin/course/couponList");
		
		return mv;
	}
	
	@RequestMapping("aCouponDetail.do")
	public ModelAndView aCouponDetail(ModelAndView mv, int couponType) {
		
		Coupon co = cService.selectCoupon(couponType);
		
		ArrayList<GiveCoupon> gcList = cService.selectGiveCouponList(couponType);
		
		mv.addObject("co", co).addObject("gcList", gcList).setViewName("admin/member/detailCoupon");
		
		return mv;
		
	}
	
	@RequestMapping("aInsertCoupon.do")
	public String aInsertCoupon(Coupon c, ModelAndView mv) {
		
		int result = cService.insertCoupon(c);
		
		if(result > 0) {
			
			return "admin/member/couponList";
			
		}else {
			
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("aGiveCouponCourse.do")
	public String aGiveCouponCourse(int couponType, int courseNum) {
		
		ArrayList<TakeCourse> list = pService.courseMemberList(courseNum);
		
		int result = cService.insertGiveCouponCourse(couponType, list);
		
		if(result > 0) {
			
			return "admin/member/couponList";
			
		}else {
			
			return "common/errorPage";
		}
		
		
	}
	

}
