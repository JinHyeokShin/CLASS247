package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.payment.model.dao.PaymentDao;
import com.ourcompany.class247.payment.model.vo.Payment;

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

	/** 크리에이터센터 총 누적수익 구해오기 
	 *
	 */
	@Override
	public int getCreAmount(int creNum) {
		return pDao.getCreAmount(creNum);
	}

}
