package com.ourcompany.class247.inquiry.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.inquiry.model.dao.InquiryDao;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Service("iService")
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	private InquiryDao iDao;

	@Override
	public ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum) {
		return iDao.getInquiryList(pi, creNum);
	}

	@Override
	public int getInquiryCount(int creNum) {
		return iDao.getInquiryCount(creNum);
	}

	@Override
	public int getAdminInquiryList() { 
		return iDao.getAdminInquiryCount();
	}

	@Override
	public ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi) {
		return iDao.selectAdminInquiryList(pi);
	}
	
	

}
