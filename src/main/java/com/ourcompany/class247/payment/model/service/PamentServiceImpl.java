package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.payment.model.dao.PaymentDao;
import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

@Service("pService")
public class PamentServiceImpl implements PaymentService{
@Autowired
private PaymentDao pDao;
	
	
	@Override
	public ArrayList<Payment> payonlist(int memNum) {
		
		return pDao.payonlist(memNum);
	}

	@Override
	public ArrayList<Payment> payofflist(int memNum) {
		
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




}
