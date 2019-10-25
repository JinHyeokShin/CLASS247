package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.dao.NoticeDao;
import com.ourcompany.class247.notice.model.vo.FAQ;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;

	
@Service("nService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao nDao;
	
	
	@Override
	public int insertNotice(Notice n){
		return nDao.insertNotice(n);
	}
	
	@Override
	public int getListCount() {
		return nDao.getListCount();
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return nDao.selectList(pi);
	}

	@Override
	public Notice noticeDetail(int noticeNum) {
		
		// 1. 조회수 증가시키는 dao
		int result = nDao.updateCount(noticeNum);
		// 2. 상세조회
		if(result > 0) {
			return nDao.noticeDetail(noticeNum);
		}else {
			return null;
		}
	}
	
	@Override
	public Notice selectNotice(int noticeNum) {
		return nDao.noticeDetail(noticeNum);
	}
	
	@Override
	public int deleteNotice(int noticeNum) {
		return nDao.deleteBoard(noticeNum);
	}
	
	@Override
	public int getNoticeReplyListCount(int noticeNum) {
		return nDao.getNoticeReplyListCount(noticeNum);
	}
/* 댓글
	@Override
	public ArrayList<NoticeReply> selectReplyList(int noticeNum) {
		return nDao.selectReplyList(noticeNum);
	}

	@Override
	public int insertReply(NoticeReply nr) {
		return nDao.insertReply(nr);
	}
*/

	

	@Override
	public int getUserFaqListCount() {
		return nDao.getUserFaqListCount();
	}

	@Override
	public ArrayList<FAQ> selectUserFaqList(PageInfo pi) {
		return nDao.selectUserFaqList(pi);
	}
	

	
	

	@Override
	public ArrayList<NoticeReply> selectNReplyList(int noticeNum, PageInfo rpi) {
		
		return nDao.selectNReplyList(noticeNum, rpi);
	}
	
	@Override
	public int insertNoticeReply(NoticeReply nr) {
		return nDao.insertNoticeReply(nr);
	}
	
	@Override
	public int insertRNoticeReply(NoticeReply nr) {
		return nDao.insertRNoticeReply(nr);
	}
	
	@Override
	public NoticeReply selectParentReply(int nReplyNum) {
		return nDao.selectParentReply(nReplyNum);
	}
	
	@Override
	public int selectChild(int nReplyNum) {
		return nDao.selectChild(nReplyNum);
	}
	
	@Override
	public int updateReplyY(int nReplyNum) {
		return nDao.updateReplyY(nReplyNum);
	}
	
	@Override
	public int updateReplyN(int nReplyNum) {
		return nDao.updateReplyN(nReplyNum);
	}


	


}
