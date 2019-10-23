package com.ourcompany.class247.coupon.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.coupon.model.vo.Coupon;

public interface CouponService {

	ArrayList<Coupon> listCoupon(int memNum ,PageInfo pi);

	int getListCount();
	

}
