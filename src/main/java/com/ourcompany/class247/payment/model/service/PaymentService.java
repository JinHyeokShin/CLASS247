package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

public interface PaymentService {

	ArrayList<Payment> payonlist(int memNum);

	ArrayList<Payment> payofflist(int memNum);
	
	ArrayList<Payment> selectMyPaymentList(int memNum);
	
	int getListCount(int memNum);
	
	ArrayList<TakeCourse> courseMemberList(int courseNum);
	
	ArrayList<Payment> selectPaymentList();
	
	ArrayList<Payment> selectPowerList();

	ArrayList<Delivery> memdelivery(int memNum);
	//크리에이터센터 총 누적수익 구해오기 
	int getCreAmount(int creNum);

	
}
