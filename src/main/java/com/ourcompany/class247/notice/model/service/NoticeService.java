package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.FAQ;
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
	
	ArrayList<NoticeReply> selectNReplyList(int noticeNum, PageInfo rpi); 
	
	int getNoticeReplyListCount(int noticeNum);
	
	// 댓글작성
	int insertNoticeReply(NoticeReply nr);
	
	// 대댓글 작성
	int insertRNoticeReply(NoticeReply nr);
	
	// 부모찾기
	NoticeReply selectParentReply(int nReplyNum);
	
	// 자식찾기
	int selectChild(int nReplyNum);
	
	// 자식이 있을 때
	int updateReplyY(int nReplyNum);
	
	// 자식이 없을 때
	int updateReplyN(int nReplyNum);
	
}
