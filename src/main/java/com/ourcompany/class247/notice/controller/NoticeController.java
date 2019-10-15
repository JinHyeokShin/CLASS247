package com.ourcompany.class247.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	@RequestMapping("aFAQList.do")
	public String faqViewListForm() {
		
		return "admin/notice/faqList";
		
	}
	
	@RequestMapping("aNoticeList.do")
	public String noticeListForm() {
		
		return "admin/notice/noticeList";
		
		
	}

}
