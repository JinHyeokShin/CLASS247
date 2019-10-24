package com.ourcompany.class247.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.FAQ;


@Repository("fDao")
public class FAQDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("noticeMapper.getListCountf");
	}
	
	public ArrayList<FAQ> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("noticeMapper.selectListf",null,rowBounds);
	}
	
	
	public int insertFAQ(FAQ f) {
		return sqlSession.insert("noticeMapper.insertFAQ", f);
		
	}


	
}

