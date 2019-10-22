package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;

public interface NoticeService {
	
	int insertNotice(Notice n);
	
	int getListCount();
	
	ArrayList<Notice> selectList(PageInfo pi);
	
	Notice noticeDetail(int noticeNum);
	
	Notice selectNotice(int noticeNum);
	
	int deleteNotice(int noticeNum);
/*	댓글
	ArrayList<NoticeReply> selectReplyList(int noticeNum);
	
	int insertReply(NoticeReply nr);
*/
}
