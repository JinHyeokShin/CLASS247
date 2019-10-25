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
import com.ourcompany.class247.member.model.vo.Member;
@Controller
public class CouponController {

	@Autowired
	private CouponService cService;
	
	
	@RequestMapping("memCoupon.do")
	public ModelAndView memCoupon(HttpServletRequest request, ModelAndView mv,@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage){
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		int listCount = cService.getListCount(memNum);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Coupon> couponlist = cService.listCoupon(memNum, pi);
		mv.addObject("pi",pi).addObject("couponlist",couponlist);
		mv.setViewName("user/member/memCoupon");
		
		return mv;
	}
}
