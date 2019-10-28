package com.ourcompany.class247.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.payment.model.service.PamentServiceImpl;
import com.ourcompany.class247.payment.model.service.PaymentService;
import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

@Controller
public class PaymentController {
	
	
	@Autowired
	private PamentServiceImpl pService;
	
	
	

	
	/**
	 * 수강 중 온라인,오프라인 수업 리스트 뽑기
	 * @param request
	 * @param mv
	 * @return
	 */
	@RequestMapping("memClass.do")
	public ModelAndView memClass(HttpServletRequest request, ModelAndView mv) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		ArrayList<TakeCourse> payonlist = pService.payonlist(memNum);
		ArrayList<TakeCourse> payofflist = pService.payofflist(memNum);
		
		mv.addObject("payonlist",payonlist);
		mv.addObject("payofflist", payofflist);
		mv.setViewName("user/member/memClass");
		return mv;
	}
	
	
	/**배달리스트 뽑기
	 * @param request
	 * @param mv
	 * @return
	 */
	@RequestMapping("memDelivery.do")
	public ModelAndView memDalivery(HttpServletRequest request, ModelAndView mv) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		
		ArrayList<Delivery> delist = pService.memdelivery(memNum);
		mv.addObject("delist", delist);
		mv.setViewName("user/member/memDelivery");
		return mv;
	}
	
	@RequestMapping("memDeliverydetail.do")
	public ModelAndView memDeliverydetail(HttpServletRequest request, ModelAndView mv) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		
		ArrayList<Delivery> delist = pService.memdelivery(memNum);
		mv.addObject("delist", delist);
		mv.setViewName("user/member/memDeliverydetail");
		return mv;
	}
	
	
	
}
