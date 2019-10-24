package com.ourcompany.class247.notice.model.vo;

import java.sql.Date;

public class NoticeReply {
	
	private int nReplyNum;			//공지사항리뷰번호
	private int noticeNum;			//공지사항번호
	private String memProfileName;	//댓글 작성자 프로필
	private int memNum;
	private String memNickname;		//작성자번호
	private int nReplyParentNum;	//댓글리뷰번호
	private int nReplyDepth;		//댓글깊이
	private String nReplyContent;	//댓글내용
	private Date nReplyEnrollDate;	//작성날짜
	private Date nReplyModifyDate;	//수정날짜
	private String nReplyStatus;	//상태값
	
	public NoticeReply() {
		
	}
	


	
	

}
