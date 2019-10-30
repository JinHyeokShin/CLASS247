package com.ourcompany.class247.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.payment.model.vo.Complete;
import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

@Repository("pDao")
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<TakeCourse> payonlist(int memNum) {

		return (ArrayList)sqlSession.selectList("courseMapper.payonList",memNum);
	}

	public ArrayList<TakeCourse> payofflist(int memNum) {

		return (ArrayList)sqlSession.selectList("courseMapper.payoffList",memNum);
	}
	
	public ArrayList<Payment> selectMyPaymentList(int memNum) {
		
		return (ArrayList)sqlSession.selectList("paymentMapper.selectMyPaymentList", memNum);
	}

	public ArrayList<Delivery> memdelivery(int memNum) {
		
		return (ArrayList)sqlSession.selectList("courseMapper.memdelivery",memNum);
	}
	/** 크리에이터 센터 누적 금액 구해오기 
	 * @param creNum
	 * @return
	 */
	public int getCreAmount(int creNum) {
		 int amount =  0;
		 if(sqlSession.selectOne("courseMapper.getCreAmount", creNum) != null) {
			amount = sqlSession.selectOne("courseMapper.getCreAmount", creNum);
		 }
		 
		 return amount;
	}
	

	
	public int getListCount(int memNum) {
		
		return sqlSession.selectOne("paymentMapper.getListCount", memNum);
	}
	
	public ArrayList<TakeCourse> courseMemberList(int courseNum) {
		return (ArrayList)sqlSession.selectList("courseMapper.courseMemberList", courseNum);
	}
	
	public ArrayList<Payment> selectPaymentList() {
		return (ArrayList)sqlSession.selectList("paymentMapper.selectPaymentList");
	}
	
	public ArrayList<Payment> selectPowerList() {
		return (ArrayList)sqlSession.selectList("paymentMapper.selectPowerList");
	}
	
	public int jhinsertPayment(Payment p) {
		return sqlSession.insert("paymentMapper.jhinsertPayment", p);
	}
	
	public int jhinsertTakeCourse(TakeCourse t) {
		return sqlSession.insert("paymentMapper.jhinsertTakeCourse",t);
	}
	
	public Complete complete(String payCode) {
		return sqlSession.selectOne("paymentMapper.complete",payCode);
	}
}
