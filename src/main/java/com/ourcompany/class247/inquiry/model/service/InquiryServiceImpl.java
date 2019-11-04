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

	/** 문의글 리스트 불러오기 
	 *
	 */
	@Override
	public ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum) {
		return iDao.getInquiryList(pi, creNum);
	}

	/** 문의글 총 수 불러오기 
	 *
	 */
	@Override
	public int getInquiryCount(int creNum) {
		return iDao.getInquiryCount(creNum);
	}

	/** 문의글 등록하기 
	 *
	 */
	@Override
	public int insertInquiry(Inquiry inq) {
		return iDao.insertInquiry(inq);
	}

	/** 문의글 상세보기 
	 *
	 */
	@Override
	public Inquiry selectInquiry(int inquiryNum) {
		return iDao.selectInquiry(inquiryNum);
	}

	/** 문의글 삭제하기 
	 *
	 */
	@Override
	public int deleteInquiry(int inquiryNum) {
		return iDao.deleteInquiry(inquiryNum);
	}
	@Override
	public int getAdminInquiryList() { 
		return iDao.getAdminInquiryCount();
	}

	@Override
	public ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi) {
		return iDao.selectAdminInquiryList(pi);
	}
	
	/** 문의글 수정하기 
	 *
	 */
	@Override
	public int updateInquiry(Inquiry inq) {
		return iDao.updateInquiry(inq);
	}
	
	

}
