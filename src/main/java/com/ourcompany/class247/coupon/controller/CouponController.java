package com.ourcompany.class247.coupon.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class CouponController {

	
	@RequestMapping("memCoupon.do")
	public String memCoupon(){
		return "user/member/memCoupon";
	}
}
