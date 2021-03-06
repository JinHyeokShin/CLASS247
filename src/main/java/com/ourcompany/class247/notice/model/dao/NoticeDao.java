package com.ourcompany.class247.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;


		
import com.ourcompany.class247.notice.model.vo.FAQ;


@Repository("nDao")
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("noticeMapper.getListCount");
	}

		
	public int insertNotice(Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice", n);
		
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
	
	public int getUserFaqListCount() {
		return sqlSession.selectOne("noticeMapper.getUserFaqListCount");
	}
	
	@SuppressWarnings( { "unchecked", "rawtypes" } )
	public ArrayList<FAQ> selectUserFaqList(PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectUserFaqList", null, rowBounds);
	}


	public int updateNotice(Notice n) {
		return sqlSession.update("noticeMapper.updateNotice", n);
	}
	
	public int getNoticeReplyListCount(int noticeNum) {
		
		return sqlSession.selectOne("noticeMapper.getNoticeReplyListCount", noticeNum);
	}
	
	
	public ArrayList<NoticeReply> selectNReplyList(int noticeNum, PageInfo rpi) {
		int offset = (rpi.getCurrentPage() - 1) *rpi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, rpi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectNReplyList", noticeNum, rowBounds);
	}
	
	public int insertNoticeReply(NoticeReply nr) {
		
		return sqlSession.insert("noticeMapper.insertNoticeReply", nr);
	}
	
	public NoticeReply selectParentReply(int nReplyNum) {
		
		return sqlSession.selectOne("noticeMapper.selectParentReply", nReplyNum);
	}
	
	public int insertRNoticeReply(NoticeReply nr) {
		return sqlSession.insert("noticeMapper.insertRNoticeReply", nr);
	}
	
	public int selectChild(int nReplyNum) {
		return sqlSession.selectOne("noticeMapper.selectChild", nReplyNum);
	}

	public int updateReplyY(int nReplyNum) {
		return sqlSession.update("noticeMapper.updateReplyY", nReplyNum);
	}
	
	public int updateReplyN(int nReplyNum) {
		return sqlSession.update("noticeMapper.updateReplyN", nReplyNum);
	}
	
	public int updateReply(NoticeReply nr) {
		return sqlSession.update("noticeMapper.updateReply", nr);
	}

	
}
