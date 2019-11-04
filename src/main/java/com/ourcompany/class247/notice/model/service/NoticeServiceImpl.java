package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.dao.NoticeDao;
import com.ourcompany.class247.notice.model.vo.FAQ;
import com.ourcompany.class247.notice.model.vo.Notice;

	
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
	public int updateNotice(Notice n) {
		return nDao.updateNotice(n);
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

	

}
