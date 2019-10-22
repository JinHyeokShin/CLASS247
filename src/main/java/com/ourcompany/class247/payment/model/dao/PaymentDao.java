package com.ourcompany.class247.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.payment.model.vo.Payment;

@Repository("pDao")
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Payment> payonlist(int memNum) {

		return (ArrayList)sqlSession.selectList("courseMapper.payonList",memNum);
	}

	public ArrayList<Payment> payofflist(int memNum) {

		return (ArrayList)sqlSession.selectList("courseMapper.payoffList",memNum);
	}

}
