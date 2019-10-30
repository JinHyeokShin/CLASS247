package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.payment.model.vo.Complete;
import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

public interface PaymentService {

	ArrayList<TakeCourse> payonlist(int memNum);

	ArrayList<TakeCourse> payofflist(int memNum);
	
	ArrayList<Payment> selectMyPaymentList(int memNum);
	
	int getListCount(int memNum);
	
	ArrayList<TakeCourse> courseMemberList(int courseNum);
	
	ArrayList<Payment> selectPaymentList();
	
	ArrayList<Payment> selectPowerList();

	ArrayList<Delivery> memdelivery(int memNum);
	
	ArrayList<Delivery> memdeliverydetail(String payCode);
	//크리에이터센터 총 누적수익 구해오기 
	int getCreAmount(int creNum);
	
	int jhinsertPayment(Payment p);
	
	int jhinsertTakeCoruse(TakeCourse t);

	Complete complete(String payCode);
}
