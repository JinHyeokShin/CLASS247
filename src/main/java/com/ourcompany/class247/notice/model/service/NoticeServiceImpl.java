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
	public int getUserFaqListCount() {
		return nDao.getUserFaqListCount();
	}

	@Override
	public ArrayList<FAQ> selectUserFaqList(PageInfo pi) {
		return nDao.selectUserFaqList(pi);
	}

}
