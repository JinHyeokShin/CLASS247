package com.ourcompany.class247.inquiry.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

public interface InquiryService {

	ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum);

	int getInquiryCount(int creNum);


}
