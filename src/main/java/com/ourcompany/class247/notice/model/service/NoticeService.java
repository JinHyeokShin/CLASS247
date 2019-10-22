package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;



/*	댓글
	ArrayList<NoticeReply> selectReplyList(int noticeNum);
	
	int insertReply(NoticeReply nr);
*/


public interface NoticeService {

	// 1. 공지사항 개수 조회
	int getListCount();
	
	// 2. 공지사항 리스트 조회
	ArrayList<Notice> selectList(PageInfo pi);
	
	// 3. 공지사항 디테일 조회
	Notice noticeDetail(int noticeNum);
	
	// 4. faq 개수 조회
	int getUserFaqListCount();
	
	// 5. faq 리스트 조회
	ArrayList<FAQ> selectUserFaqList(PageInfo pi);

		
	int insertNotice(Notice n);

	
	Notice selectNotice(int noticeNum);
	
	int deleteNotice(int noticeNum);
}
