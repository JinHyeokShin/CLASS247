package com.ourcompany.class247.inquiry.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;
import com.ourcompany.class247.notice.model.vo.Notice;

public interface InquiryService {

	ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum);

	int getInquiryCount(int creNum);

	
	// 관리자 답변 개수 조회
	int getAdminInquiryList();
		
	// 관리자 답변 리스트 조회
	ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi);
	
	// 관리자 디테일 조회
	Inquiry aInquiryDetail(int inquiryNum);

	Inquiry selectaInquiry(int inquiryNum);

	int insertaInquiry(Inquiry i);


	

}
