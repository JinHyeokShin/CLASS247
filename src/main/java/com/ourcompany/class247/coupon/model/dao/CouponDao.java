package com.ourcompany.class247.coupon.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.coupon.model.vo.Coupon;
import com.ourcompany.class247.coupon.model.vo.GiveCoupon;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

@Repository("cDao")
public class CouponDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	public ArrayList<GiveCoupon> couponlist(int memNum, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.couponList",memNum,rowBounds );

	}
	public int getListCount(int memNum) {
		
		return sqlSession.selectOne("memberMapper.getListCount",memNum);
	}
	
	public ArrayList<Coupon> selectCouponList() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectCouponList");
	}
	
	public Coupon selectCoupon(int couponType) {
		return sqlSession.selectOne("memberMapper.selectCoupon", couponType);
	}
	
	public ArrayList<GiveCoupon> selectGiveCouponList(int couponType) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectGiveCouponList", couponType);
	}
	
	public int insertCoupon(Coupon c) {
		return sqlSession.insert("memberMapper.insertCoupon", c);
	}
	
	public int aGiveCouponCourse(Coupon c) {
		return sqlSession.insert("memberMapper.aGiveCouponCourse", c);
	}
	
	public int insertGiveCouponCourse(int couponType, ArrayList<TakeCourse> list) {
		
		int result = 0;
		
		GiveCoupon gc = new GiveCoupon();
		
		for(TakeCourse tc : list) {
			
			gc.setMemNum(tc.getMemNum());
			gc.setCouponType(couponType);
			
			result = sqlSession.insert("memberMapper.insertGiveCouponCourse", gc);
			
		}
		
		return result;
		
	}

}
