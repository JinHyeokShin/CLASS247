package com.ourcompany.class247.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.payment.model.vo.Complete;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.payment.model.service.PamentServiceImpl;
import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.Power;
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
	public ModelAndView memDeliverydetail(HttpServletRequest request, ModelAndView mv, String payCode) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNum = loginUser.getMemNum();
		
		ArrayList<Delivery> delist = pService.memdeliverydetail(payCode);
		mv.addObject("delist", delist);
		mv.setViewName("user/member/memDeliverydetail");
		return mv;
	}

	@ResponseBody
	@RequestMapping("payment.do")
	public String payment(Payment p, TakeCourse t) {
		pService.jhinsertPayment(p);
		pService.jhinsertTakeCoruse(t);
		
		return p.getPayCode();
	}
	
	@ResponseBody
	@RequestMapping("paymentMD.do")
	public String payment(Payment p, Power po) {
		System.out.println(p);
		System.out.println(po);
		
		pService.jhinsertPayment(p);
		pService.jhinsertPower(po);
		
//		pService.jhinsertPayment(p);
		
		return p.getPayCode();
	}
	
	@RequestMapping("aPayment.do")
	public ModelAndView paymentView(ModelAndView mv, @RequestParam(value="currentPage1", required=false, defaultValue="1")int currentPage1, @RequestParam(value="currentPage2", required=false, defaultValue="1")int currentPage2) {
		
		int paymentCount = pService.paymentCount();
		
		PageInfo pi1 = Pagination.getPageInfo(currentPage1, paymentCount);
		
		ArrayList<Payment> pList = pService.selectPaymentList();
		
		int powerCount = pService.powerCount();
		
		PageInfo pi2 = Pagination.getPageInfo(currentPage2, powerCount);
		
		
		ArrayList<Payment> poList = pService.selectPowerList();
		
		mv.addObject("pi1", pi1).addObject("pi2", pi2).addObject("pList", pList).addObject("poList", poList).setViewName("admin/payment/paymentList");
		
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
	
	@RequestMapping("aDeliverDetail.do")
	public ModelAndView aDeliverDetail(int deliveryNum, ModelAndView mv) {
		
		Delivery d = pService.aDeliverDetail(deliveryNum);
		
		mv.addObject("d", d).setViewName("admin/payment/deliveryDetail");
		
		return mv;
		
	}
	
	@ResponseBody
	@RequestMapping("updateDeliStatus.do")
	public String updateDeliStatus(String status, int deliveryNum) {
		
		System.out.println(status);
		
		Delivery d = new Delivery();
		
		d.setDeliveryNum(deliveryNum);
		d.setDeliveryStatus(status);
		
		int result = pService.updateDeliStatus(d);
		
	
		
		return status;
	}

	
	@RequestMapping("complete.do")
	public ModelAndView complete(ModelAndView mv,String payCode) {
		Complete c = pService.complete(payCode);
		System.out.println(c);
		mv.addObject("c", c);
		mv.setViewName("user/course/complete");
		return mv;
	}
	
	
}
