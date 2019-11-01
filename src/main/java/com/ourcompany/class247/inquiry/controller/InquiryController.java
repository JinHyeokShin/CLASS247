package com.ourcompany.class247.inquiry.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.inquiry.model.service.InquiryService;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;

@Controller
public class InquiryController {

	@Autowired
	private InquiryService iService;
	
	
	/** 1. 문의게시글 목록 
	 * @param request
	 * @param mv
	 * @return
	 */
	@RequestMapping("inquiryList.do")
	public ModelAndView inquiryList(HttpServletRequest request, ModelAndView mv, 
								@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		int inquiryCount = iService.getInquiryCount(creNum);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, inquiryCount);
		ArrayList<Inquiry> inquiryList = iService.getInquiryList(pi, creNum);
		

		mv.addObject("iList", inquiryList).addObject("pi", pi);
		mv.setViewName("creator/inquiry/cInquiryList");
		
		return mv;
	}
	
	 
	/** 2. 문의글쓰기 페이지 이동 
	 * @return
	 */
	@RequestMapping("iwrite.do")
	public String inquiryWritePage() {
		return "creator/inquiry/inquiryInsertForm";
	}
	
	
	/** 3. 문의글 등록하기
	 * @param inq
	 * @param request
	 * @param file
	 */
	@RequestMapping("insertInquiry.do")
	public ModelAndView insertInquiry(Inquiry inq, HttpServletRequest request, ModelAndView mv,
					@RequestParam(name="file", required=false) MultipartFile file) {
		
		if(!file.getOriginalFilename().equals("")) {

			String rename = saveFile(file, request);
			inq.setInquiryFileName(rename);
			inq.setInquiryPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\inquiryImages\\");
		}
		
		int result = iService.insertInquiry(inq);
		
		if(result>0) {
			mv.addObject("msg", "문의글 등록이 완료되었습니다.");
			mv.setViewName("redirect:inquiryList.do");
		} else {
			mv.addObject("msg", "문의글 등록에 실패되었습니다.");
			mv.setViewName("common/error");
		}
		
		return mv;
		
	}
	
	
	/** 문의글 상세보기 
	 * @param inquiryNum
	 */
	@RequestMapping("idetail.do")
	public ModelAndView selectInquiryDetail(@RequestParam int inquiryNum, ModelAndView mv) {
		Inquiry inquiry = iService.selectInquiry(inquiryNum);
		if(inquiry != null) {
			mv.addObject("inq", inquiry);
			mv.setViewName("creator/inquiry/inquiryDetail");
		} else {
			mv.addObject("msg", "실패하였습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	 
	/** 서버에 파일 저장하기 
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		
		//파일이 저장될 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\creator\\inquiryImages";
		
		File folder = new File(savePath); //저장될 폴더 지정 
		
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String originalFileName = file.getOriginalFilename(); //원본명
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
								+ originalFileName.substring(originalFileName.lastIndexOf("."));
		
		
		String renamePath = savePath + "\\" + renameFileName;
		
		//서버에 저장
		try {
			file.transferTo(new File(renamePath));
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return renameFileName;
	}
	
	
	@RequestMapping("deleteInquiry.do")
	public ModelAndView deleteInquiry(@RequestParam int inquiryNum, Inquiry inq, ModelAndView mv) {
		int result = iService.deleteInquiry(inquiryNum);
		
		if(result > 0) {
			 mv.setViewName("redirect:inquiryList.do");
		} else {
			 mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	
	//수정하기 페이지 이동
	@RequestMapping("InquiryForm.do")
	public ModelAndView goUpdatePage(@RequestParam int inquiryNum, ModelAndView mv) {
		Inquiry inquiry = iService.selectInquiry(inquiryNum);
		mv.addObject("i", inquiry).setViewName("creator/inquiry/inquiryUpdateForm");
		return mv;
	}
	
	
	//수정하기 
	@RequestMapping("updateInquiry.do")
	public ModelAndView updateInquiry(Inquiry inq, HttpServletRequest request, ModelAndView mv,
			@RequestParam(name="file", required=false) MultipartFile file) {
		System.out.println(inq.getInquiryNum());
		System.out.println(inq);
	
		if(!file.getOriginalFilename().equals("")) {
	
			String rename = saveFile(file, request);
			inq.setInquiryFileName(rename);
			inq.setInquiryPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\inquiryImages\\");
		}
		int result = iService.updateInquiry(inq);
		
		if(result > 0) {
			mv.addObject("msg", "수정되었습니다.").setViewName("redirect:inquiryList.do");
		} else {
			mv.addObject("msg", "수정 실패!!").setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping("adminInquriyList.do")
	public ModelAndView selectList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		
		int listCount = iService.getAdminInquiryList();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Inquiry> list = iService.selectAdminInquiryList(pi);

		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("admin/inquiry/aInquiryList");
		
		return mv;
		
	}
}
