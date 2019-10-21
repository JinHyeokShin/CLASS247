package com.ourcompany.class247.coupon.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.coupon.model.vo.Coupon;

@Repository("cDao")
public class CouponDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	public ArrayList<Coupon> couponlist(int memNum, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.couponList",memNum,rowBounds );

	}
	public int getListCount() {
		
		return sqlSession.selectOne("memberMapper.getListCount");
	}

}
