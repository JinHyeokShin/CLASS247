package com.ourcompany.class247.inquiry.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;
import com.ourcompany.class247.notice.model.vo.Notice;

public interface InquiryService {

	//목록 생성 + 페이징바 
	ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum);

	//목록 생성을 위한 문의글 수 
	int getInquiryCount(int creNum);

	// 문의글 등록
	int insertInquiry(Inquiry inq);
	
	//문의글 상세보기 
	Inquiry selectInquiry(int inquiryNum);

	//문의글 삭제하기 
	int deleteInquiry(int inquiryNum);

	
	// 관리자 답변 개수 조회
	int getAdminInquiryList();
		
	// 관리자 답변 리스트 조회
	ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi);
	
	// 관리자 디테일 조회
	Inquiry aInquiryDetail(int inquiryNum);

	Inquiry selectaInquiry(int inquiryNum);

	int insertaInquiry(Inquiry i);


	

	//문의글 수정하기 
	int updateInquiry(Inquiry inq);

}
