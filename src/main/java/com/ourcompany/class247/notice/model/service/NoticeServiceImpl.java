package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.dao.NoticeDao;
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
	public ArrayList<Notice> selectList(PageInfo pi){
		
		return nDao.selectList(pi);
	}
	
	@Override
	public Notice noticeDetail(int noticeNum) {
		
		int result = nDao.updateCount(noticeNum);
		
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

	
}
