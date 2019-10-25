package com.ourcompany.class247.coupon.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.coupon.model.dao.CouponDao;
import com.ourcompany.class247.coupon.model.vo.Coupon;

@Service("cService")


public class CouponServiceImpl implements CouponService{
@Autowired
private CouponDao cDao;


@Override
public ArrayList<Coupon> listCoupon(int memNum, PageInfo pi) {
	
	return cDao.couponlist(memNum, pi);
}

@Override
public int getListCount(int memNum) {
	
	return cDao.getListCount(memNum);
	}
}
