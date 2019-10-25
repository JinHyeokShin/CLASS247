package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.payment.model.vo.TakeCourse;

public interface PaymentService {

	ArrayList<TakeCourse> payonlist(int memNum);

	ArrayList<TakeCourse> payofflist(int memNum);
	
	ArrayList<Payment> selectMyPaymentList(int memNum);

	ArrayList<Delivery> memdelivery(int memNum);
	//크리에이터센터 총 누적수익 구해오기 
	int getCreAmount(int creNum);

}
