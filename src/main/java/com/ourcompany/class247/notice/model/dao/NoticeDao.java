package com.ourcompany.class247.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.Notice;

@Repository("nDao")
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("noticeMapper.getListCount");
	}
	
	@SuppressWarnings( { "unchecked", "rawtypes" } )
	public ArrayList<Notice> selectList(PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList", null, rowBounds);
	}
	
	public int updateCount(int noticeNum) {
		return sqlSession.update("noticeMapper.updateCount", noticeNum);
	}
	
	public Notice noticeDetail(int noticeNum) {
		return sqlSession.selectOne("noticeMapper.selectNotice", noticeNum);
	}
	
}
