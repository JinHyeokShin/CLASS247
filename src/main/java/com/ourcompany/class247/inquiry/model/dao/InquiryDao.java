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

	public ArrayList<Inquiry> getInquiryList(PageInfo pi, int creNum) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("inquiryMapper.getInquiryList", creNum, rowBounds);
	}

	public int getInquiryCount(int creNum) {
		return sqlSession.selectOne("inquiryMapper.getInquiryCount", creNum);
	}
	
	public int getAdminInquiryCount(){
		return sqlSession.selectOne("inquiryMapper.getAdminInquiryList");
	}
	
	public ArrayList<Inquiry> selectAdminInquiryList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("inquiryMapper.getAdminInquiryList", null, rowBounds);
	}
}
