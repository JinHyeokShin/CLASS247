package com.ourcompany.class247.inquiry.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Repository("iDao")
public class InquiryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	//문의글 리스트 불러오기 + 페이징 처리 
	public ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("inquiryMapper.getInquiryList", creNum, rowBounds);
	}
	
	
	//문의글 총 수 구하기 
	public int getInquiryCount(int creNum) {
		return sqlSession.selectOne("inquiryMapper.getInquiryCount", creNum);
	}
	
	
	//문의글 추가하기 
	public int insertInquiry(Inquiry inq) {
		return sqlSession.insert("inquiryMapper.insertInquiry", inq);
	}

	//문의글 상세보기 
	public Inquiry selectInquiry(int inquiryNum) {
		return sqlSession.selectOne("inquiryMapper.selectInquiry", inquiryNum);
	}

	//문의글 삭제하게 
	public int deleteInquiry(int inquiryNum) {
		int result =  sqlSession.update("inquiryMapper.deleteInquiry", inquiryNum);
		return result;
	}
	
	public int getAdminInquiryCount(){
		return sqlSession.selectOne("inquiryMapper.getAdminInquiryList");
	}
	
	public ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("inquiryMapper.getAdminInquiryList", null, rowBounds);
	}


	public int updateInquiry(Inquiry inq) {
		return sqlSession.update("inquiryMapper.updateInquiry", inq);
	}
}
