package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.dao.FAQDao;
import com.ourcompany.class247.notice.model.vo.FAQ;

@Service("fService")
public class FAQServiceImpl implements FAQService{
	
	@Autowired
	private FAQDao fDao;
	
	@Override
	public int insertFAQ(FAQ f) {
		return fDao.insertFAQ(f);
	}

	@Override
	public int getListCountf() {
		
		return fDao.getListCount();
	}

	@Override
	public ArrayList<FAQ> selectListf(PageInfo pi) {
		
		return fDao.selectList(pi);
	}
	
}
	

