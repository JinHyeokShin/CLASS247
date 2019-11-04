package com.ourcompany.class247.notice.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.ourcompany.class247.common.ReplyPagination;
import com.ourcompany.class247.notice.model.service.FAQService;
import com.ourcompany.class247.notice.model.service.NoticeService;
import com.ourcompany.class247.notice.model.vo.FAQ;
import com.ourcompany.class247.notice.model.vo.Notice;
import com.ourcompany.class247.notice.model.vo.NoticeReply;

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
			 System.out.println(n);
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
	public ModelAndView noticeDetail(int noticeNum, ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="0")int currentPage) {
		
		Notice n = nService.selectNotice(noticeNum);
		
		int listCount = nService.getNoticeReplyListCount(noticeNum);
		
		PageInfo pi = ReplyPagination.getPageInfo(currentPage, listCount);
		
		if(n != null) {
			mv.addObject("n", n).addObject("pi", pi).setViewName("admin/notice/noticeDetail");
			
		}else {
			mv.addObject("msg", "게시글 상세조회실패!")
			.setViewName("admin/common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("aNupdate.do")
	public ModelAndView noticeUpdate(ModelAndView mv, int noticeNum) {

		Notice n = nService.selectNotice(noticeNum);
		mv.addObject("n", n).setViewName("admin/notice/noticeUpdate");
		
		return mv;
	}
	
	@RequestMapping("aNupdatedetail.do")
	public String noticeUpdate(@RequestParam("noticeNum") int noticeNum, @RequestParam("noticeTitle") String noticeTitle, @RequestParam("noticeContent") String noticeContent) {
	Notice n = new Notice();
	
		n.setNoticeNum(noticeNum);
		
		if(!noticeTitle.equals("")) {
			n.setNoticeTitle(noticeTitle);
		}
		if(!noticeContent.equals("")) {
			n.setNoticeContent(noticeContent);
		}
		
		int result = nService.updateNotice(n);
		
		if(result>0) {
			
			return "redirect:aNoticeList.do";
		}else {
			return "common/errorPage";
		}
		
		
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
	
	/**
	 * 댓글 리스트 불러오기
	 * @param currentPage
	 * @param response
	 * @param noticeNum
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("noticeReplyList.do")
	public void selectNoticeReply(@RequestParam(value="currentPage", required=false, defaultValue="0") int currentPage,  HttpServletResponse response, int noticeNum) throws JsonIOException, IOException {
		
		int listCount = nService.getNoticeReplyListCount(noticeNum);
			
		PageInfo rpi = ReplyPagination.getPageInfo(currentPage, listCount);
		
		ArrayList<NoticeReply> nrList = nService.selectNReplyList(noticeNum, rpi);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("nrList", nrList);
		map.put("rpi", rpi);
		gson.toJson(map, response.getWriter());
			
	}
	
	/**
	 * 단순 댓글작성
	 * @param memNum
	 * @param rContent
	 * @param noticeNum
	 * @return
	 */
	@ResponseBody
	@RequestMapping("aNRInsert.do")
	public String aNRInsert(int memNum, String rContent, int noticeNum) {
		
		NoticeReply nr = new NoticeReply();
		
		nr.setMemNum(memNum);
		nr.setnReplyContent(rContent);
		nr.setNoticeNum(noticeNum);
		
		
		int result = nService.insertNoticeReply(nr);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	/**
	 * 
	 * 대댓글 작성
	 * @param memNum
	 * @param rContent
	 * @param noticeNum
	 * @param parentId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("aRNRInsert.do")
	public String aRNRInsert(int memNum, String rContent, int noticeNum, int parentId) {
		
		NoticeReply nr = new NoticeReply();
		
		nr.setMemNum(memNum);
		nr.setnReplyContent(rContent);
		nr.setNoticeNum(noticeNum);
		
		NoticeReply parent = nService.selectParentReply(parentId);
		
		
		nr.setnReplyParentNum(parent.getnReplyParentNum());
		nr.setnReplyDepth(parent.getnReplyDepth()+1);
		
		System.out.println(nr);
		
		int result = nService.insertRNoticeReply(nr);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	/**
	 * 댓글 삭제
	 * @param nReplyNum
	 * @return
	 */
	@ResponseBody
	@RequestMapping("aNRDelete.do")
	public String aNRDelete(int nReplyNum) {
		
		int count = nService.selectChild(nReplyNum);
		
		System.out.println(count);
		
		int result;
		
		if(count > 0 ) {
			result = nService.updateReplyY(nReplyNum);
		}else {
			result = nService.updateReplyN(nReplyNum);
		}
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
			
	}
	
	@ResponseBody
	@RequestMapping("aRNRUpdate.do")
	public String aRNRUpdate(String rContent, int nReplyNum) {
		
		NoticeReply nr = new NoticeReply();
		
		nr.setnReplyContent(rContent);
		nr.setnReplyNum(nReplyNum);
		
		int result = nService.updateReply(nr);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
}
