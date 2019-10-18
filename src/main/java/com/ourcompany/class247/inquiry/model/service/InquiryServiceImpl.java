package com.ourcompany.class247.inquiry.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.inquiry.model.dao.InquiryDao;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Service("iService")
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	private InquiryDao iDao;

	@Override
	public ArrayList<Inquiry> getInquiryList(int creNum) {
		return iDao.getInquiryList(creNum);
	}
}
