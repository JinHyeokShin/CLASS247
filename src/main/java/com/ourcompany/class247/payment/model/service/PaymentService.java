package com.ourcompany.class247.payment.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.payment.model.vo.Delivery;
import com.ourcompany.class247.payment.model.vo.Payment;

public interface PaymentService {

	ArrayList<Payment> payonlist(int memNum);

	ArrayList<Payment> payofflist(int memNum);

	ArrayList<Delivery> memdelivery(int memNum);

}
