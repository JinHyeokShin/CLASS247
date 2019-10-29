package com.ourcompany.class247.coupon.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.coupon.model.vo.Coupon;
import com.ourcompany.class247.coupon.model.vo.GiveCoupon;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

public interface CouponService {

	ArrayList<GiveCoupon> listCoupon(int memNum ,PageInfo pi);

	int getListCount(int memNum);
	
	ArrayList<Coupon> selectCouponList();
	
	Coupon selectCoupon(int couponType);
	
	ArrayList<GiveCoupon> selectGiveCouponList(int couponType);
	
	int insertCoupon(Coupon c);
	
	int aGiveCouponCourse(Coupon c);
	
	int insertGiveCouponCourse(int couponType, ArrayList<TakeCourse> list);

}
