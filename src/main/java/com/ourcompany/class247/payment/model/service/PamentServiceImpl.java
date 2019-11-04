package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.payment.model.dao.PaymentDao;
import com.ourcompany.class247.payment.model.vo.Complete;
import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.Power;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

@Service("pService")
public class PamentServiceImpl implements PaymentService{
@Autowired
private PaymentDao pDao;
	
	
	@Override
	public ArrayList<TakeCourse> payonlist(int memNum) {
		
		return pDao.payonlist(memNum);
	}

	@Override
	public ArrayList<TakeCourse> payofflist(int memNum) {
		
		return pDao.payofflist(memNum);
	}

	@Override
	public ArrayList<Delivery> memdelivery(int memNum) {

		return pDao.memdelivery(memNum);
	}
	/** 크리에이터센터 총 누적수익 구해오기 
	 *
	 */
	@Override
	public int getCreAmount(int creNum) {
		return pDao.getCreAmount(creNum);
	}
	public ArrayList<Payment> selectMyPaymentList(int memNum) {
		
		return pDao.selectMyPaymentList(memNum);
	}
	
	@Override
	public int getListCount(int memNum) {
		return pDao.getListCount(memNum);
	}
	
	@Override
	public ArrayList<TakeCourse> courseMemberList(int courseNum) {
		return pDao.courseMemberList(courseNum);
	}

	@Override
	public ArrayList<Payment> selectPaymentList() {

		return pDao.selectPaymentList();
	}

	@Override
	public ArrayList<Payment> selectPowerList() {
		// TODO Auto-generated method stub
		return pDao.selectPowerList();
	}

	@Override
	public ArrayList<SingleCourse> selectPowerListY() {
		
		return pDao.selectPowerListY();
	}
	
	@Override
	public ArrayList<Delivery> selectDeliveryList() {
		return pDao.selectDeliveryList();
	}
	
	@Override
	public Delivery aDeliverDetail(int deliveryNum) {
		return pDao.aDeliverDetail(deliveryNum);
	}
	
	@Override
	public int updateDeliStatus(Delivery d) {
		return pDao.updateDeliStatus(d);
	}
	
	@Override
	public int paymentCount() {
		return pDao.paymentCount();
	}
	
	@Override
	public int powerCount() {
		return pDao.powerCount();
	}
	
	public int jhinsertPayment(Payment p) {
		return pDao.jhinsertPayment(p);
	}

	@Override
	public int jhinsertTakeCoruse(TakeCourse t) {
		return pDao.jhinsertTakeCourse(t);
	}

	@Override
	public ArrayList<Delivery> memdeliverydetail(String payCode) {
		
		return pDao.memdeliverydetail(payCode);
	}
	
	@Override
	public Complete complete(String payCode) {
		return pDao.complete(payCode);
	}

	@Override
	public int jhinsertPower(Power po) {
		return pDao.jhinsertPower(po);
	}




}
