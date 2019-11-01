package com.ourcompany.class247.notice.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.notice.model.service.FAQService;
import com.ourcompany.class247.notice.model.service.NoticeService;
import com.ourcompany.class247.notice.model.vo.FAQ;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;
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
	
	@Autowired
	private FAQService fService;
	
	
	@RequestMapping("aFAQList.do")
	public ModelAndView selectFAQList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
		
		
		int listCount = fService.getListCountf();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<FAQ> list = fService.selectListf(pi);
		
		mv.addObject("pi", pi).addObject("flist",list).setViewName("admin/notice/faqList");
		
		return mv;
		
	}


	
	@RequestMapping("aNoticeList.do")
	public ModelAndView noticeList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
		
		int listCount = nService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectList(pi);
		
		mv.addObject("pi", pi).addObject("nlist", list).setViewName("admin/notice/noticeList");
		
		
		return mv;
		
		
	}
	
	@RequestMapping("aNinsertView.do")
	public String noticeinsertView() {
		return "admin/notice/noticeInsert";
	}
	
	@RequestMapping("aNinsert.do")
	public String insertNotice(Notice n, HttpServletRequest request, Model model,
								@RequestParam(name="uploadFile", required=false)MultipartFile file) throws IllegalStateException, IOException {
		
		
			 if( !file.getOriginalFilename().equals("")) {
			 
			 String renameFileName = saveFile(file, request);
			 
			 if(renameFileName != null) {
			 n.setNoticeFileName(renameFileName); }
			 
			 }
		
		
		int result = nService.insertNotice(n);
		
		if(result > 0) {
			return "redirect:aNoticeList.do";
		}else {
			model.addAttribute("msg", "공지사항 작성실패!!");
			return "common/errorPage";
		}
		
	}

	private String saveFile(MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\admin\\images\\noticeupload";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String noticeFileName = file.getOriginalFilename();
		
		String renamePath = savePath + "\\" + noticeFileName;
		

			file.transferTo(new File(renamePath));
			
		
		
		return noticeFileName;
	}

	
	@RequestMapping("aNdetail.do")
	public ModelAndView noticeDetail(int noticeNum, ModelAndView mv) {
		
		Notice n = nService.selectNotice(noticeNum);
		
		
		if(n != null) {
			mv.addObject("n", n)
			.setViewName("admin/notice/noticeDetail");
			
		}else {
			mv.addObject("msg", "게시글 상세조회실패!")
			.setViewName("admin/common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("aNdelete.do")
	public String noticeDelete(int noticeNum, HttpServletRequest request) {
		
		Notice n = nService.selectNotice(noticeNum);
		
		if(n.getNoticeFileName() != null) {
			
			deleteFile(n.getNoticeFileName(), request);
		}
		
		int result = nService.deleteNotice(noticeNum);
		
		if (result > 0) {
			
			return "redirect:aNoticeList.do";
		
		}else {
			
			return "common/errorPage";
		}
	}
	
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resouces");
		String savePath = root + "\\bupload";
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) {
			f.delete();
		}
	}
	
/*	댓글
	@RequestMapping("rnlist.do")
	public void getReplyList(int nreplyNum, HttpServletResponse response) throws JsonIOException, IOException {
		
		ArrayList<NoticeReply> list = nService.selectReplyList(nreplyNum);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		gson.toJson(list, response.getWriter());
		
		
	}

	@ResponseBody
	@RequestMapping("rninsert.do")
	public String insertReply(NoticeReply nr, HttpSession session) {
		
		String id = ((Member)session.getAttribute("loginUser")).getMemId();
		
		nr.setNoticeNum(id); // 작성한 회원 아이디 담기
		
		int result = nService.insertReply(nr);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
*/
	
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
