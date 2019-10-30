package com.ourcompany.class247.payment.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.ReplyPagination;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.notice.model.vo.NoticeReply;
import com.ourcompany.class247.payment.model.service.PamentServiceImpl;
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
		ArrayList<Payment> payonlist = pService.payonlist(memNum);
		ArrayList<Payment> payofflist = pService.payofflist(memNum);
		
		mv.addObject("payonlist",payonlist);
		mv.addObject("payofflist", payofflist);
		mv.setViewName("user/member/memClass");
		return mv;
	}
	
	@RequestMapping("memDelivery.do")
	public ModelAndView memDalivery(HttpServletRequest request, ModelAndView mv) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		
		ArrayList<Delivery> delist = pService.memdelivery(memNum);
		mv.addObject("delist", delist);
		mv.setViewName("user/member/memDelivery");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("payment.do")
	public String payment(ModelAndView mv, Payment p, TakeCourse t) {
		System.out.println(p);
		System.out.println(t);
		
		return "home.do";
	}
	
	@RequestMapping("aPayment.do")
	public ModelAndView paymentView(ModelAndView mv) {
		
		ArrayList<Payment> pList = pService.selectPaymentList();
		
		ArrayList<Payment> poList = pService.selectPowerList();
		
		mv.addObject("pList", pList).addObject("poList", poList).setViewName("admin/payment/paymentList");
		
		return mv;
		
	}
	
	@RequestMapping("aPower.do")
	public ModelAndView powerList(ModelAndView mv) {
		
		ArrayList<SingleCourse> list = pService.selectPowerListY();
		
		mv.addObject("list", list).setViewName("admin/payment/powerList");
		
		return mv;
		
	}
	

	@RequestMapping("aDelivery.do")
	public ModelAndView aDeliveryList( @RequestParam(value="status", required=false, defaultValue="N")String status, ModelAndView mv) {
		
		ArrayList<Delivery> list = pService.selectDeliveryList();
		
		int sizee = list.size();
		
		mv.addObject("list", list).addObject("sizee", sizee).setViewName("admin/payment/deliveryList");
		
		return mv;
		
		
	}
	

	
	
}
