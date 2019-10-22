package com.ourcompany.class247.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.notice.model.service.NoticeService;
import com.ourcompany.class247.notice.model.vo.FAQ;
import com.ourcompany.class247.notice.model.vo.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService nService;
	
	@RequestMapping("aFAQList.do")
	public String faqViewListForm() {
		
		return "admin/notice/faqList";
		
	}
	
	@RequestMapping("aNoticeList.do")
	public String noticeListForm() {
		
		return "admin/notice/noticeList";
		
		
	}
	
	@RequestMapping("noticeListView.do")
	public ModelAndView selectList(ModelAndView mv,@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int listCount = nService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectList(pi);
		
		mv.addObject("pi",pi).addObject("list", list).setViewName("user/notice/noticeListView");
		return mv;
	}
	
	@RequestMapping("ndetail.do")
	public ModelAndView boardDetail(int noticeNum, ModelAndView mv) {
		
		Notice n= nService.noticeDetail(noticeNum);
		
		if(n != null) {
			mv.addObject("n", n)
			.setViewName("user/notice/noticeDetailView");
		}else {
			mv.addObject("msg", "게시글상세조회 실패").setViewName("common/errorPage");
			
		}
		return mv;
		
	}
	
	@RequestMapping("userFaqListView.do")
	public ModelAndView faqListView(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		int listCount = nService.getUserFaqListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<FAQ> flist = nService.selectUserFaqList(pi);
		
		mv.addObject("pi",pi).addObject("flist", flist).setViewName("user/notice/faqListView");
		return mv;
	}
	
}
