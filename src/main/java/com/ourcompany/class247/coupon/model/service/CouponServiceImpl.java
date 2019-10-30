package com.ourcompany.class247.coupon.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.coupon.model.dao.CouponDao;
import com.ourcompany.class247.coupon.model.vo.Coupon;
import com.ourcompany.class247.coupon.model.vo.GiveCoupon;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

@Service("cService")

public class CouponServiceImpl implements CouponService {
	@Autowired
	private CouponDao cDao;

	@Override
	public ArrayList<GiveCoupon> listCoupon(int memNum, PageInfo pi) {

		return cDao.couponlist(memNum, pi);
	}

	@Override
	public int getListCount() {

		return cDao.getListCount();
	}
	
	@Override
	public ArrayList<Coupon> selectCouponList() {
		
		return cDao.selectCouponList();
	}

	@Override
	public Coupon selectCoupon(int couponType) {
		
		return cDao.selectCoupon(couponType);
	}

	@Override
	public int getListCount(int memNum) {
		
		return cDao.getListCount(memNum);
	}
	@Override
	public ArrayList<GiveCoupon> selectGiveCouponList(int couponType) {
		
		return cDao.selectGiveCouponList(couponType);
	}
	
	@Override
	public int insertCoupon(Coupon c) {
		return cDao.insertCoupon(c);
	}
	
	@Override
	public int aGiveCouponCourse(Coupon c) {
		return cDao.aGiveCouponCourse(c);
	}
	
	@Override
	public int insertGiveCouponCourse(int couponType, ArrayList<TakeCourse> list) {
		return cDao.insertGiveCouponCourse(couponType, list);
	}
	
}
