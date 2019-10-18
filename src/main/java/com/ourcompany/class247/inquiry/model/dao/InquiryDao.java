package com.ourcompany.class247.inquiry.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Repository("iDao")
public class InquiryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Inquiry> getInquiryList(int creNum) {
		return (ArrayList)sqlSession.selectList("inquiryMapper.getInquiryList", creNum);
	}
}
