package com.ourcompany.class247.inquiry.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

public interface InquiryService {

	ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum);

	int getInquiryCount(int creNum);

	
	// 관리자 답변 개수 조회
	int getAdminInquiryList();
		
	// 관리자 답변 리스트 조회
	ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi);

}
