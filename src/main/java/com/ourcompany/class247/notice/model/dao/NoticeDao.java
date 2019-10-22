package com.ourcompany.class247.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;

	
@Repository("nDao")
public class NoticeDao{
		
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("noticeMapper.getListCount");
	}
	
	public ArrayList<Notice> selectList(PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList",null,rowBounds);
	}
		
	public int insertNotice(Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice", n);
		
	}
	
	public int updateCount(int noticeNum) {
		return sqlSession.update("noticeMapper.updateCount", noticeNum); 
	}
	
	public Notice noticeDetail(int noticeNum) {
		return sqlSession.selectOne("noticeMapper.selectBoard", noticeNum);
	}
	
	public int deleteBoard(int noticeNum) {
		return sqlSession.update("noticeMapper.deleteNotice", noticeNum);
	}
	
/* 댓글
	public ArrayList<NoticeReply> selectReplyList(int noticeNum){
		return (ArrayList)sqlSession.selectList("noticeMapper.selectReplyList", noticeNum);
	}
	
	public int insertReply(NoticeReply nr) {
		return sqlSession.insert("noticeMapper.insertReply", nr);
	}
*/
	
}
