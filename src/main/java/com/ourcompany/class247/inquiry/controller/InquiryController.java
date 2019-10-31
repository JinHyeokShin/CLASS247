package com.ourcompany.class247.inquiry.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.inquiry.model.service.InquiryService;
import com.ourcompany.class247.inquiry.model.vo.Inquiry;
import com.ourcompany.class247.notice.model.vo.Notice;

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
	
	@RequestMapping("adminInquriyList.do")
	public ModelAndView selectList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		
		int listCount = iService.getAdminInquiryList();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Inquiry> adminInquirylist = iService.selectAdminInquiryList(pi);
		System.out.println(adminInquirylist);

		mv.addObject("pi", pi)
		  .addObject("aiList", adminInquirylist)
		  .setViewName("admin/inquiry/aInquiryList");
		
		return mv;
		
	}
	
	@RequestMapping("aIdetail.do")
	public ModelAndView aInquriyDetail(int inquiryNum, ModelAndView mv) {
		
		Inquiry ai = iService.selectaInquiry(inquiryNum);
		
		
		if(ai != null) {
			mv.addObject("ai", ai)
			.setViewName("admin/inquiry/aInquiryDetail");
			
		}else {
			mv.addObject("msg", "게시글 상세조회실패!")
			.setViewName("admin/common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("aIinsert.do")
	public String insertaInquiry(Inquiry i, Model model){
		
		int result = iService.insertaInquiry(i);
		
		System.out.println(result);
		if (result > 0) {
			return "redirect:adminInquriyList.do";
		} else {
			model.addAttribute("msg", "문의사항 작성실패!!");
			return "common/errorPage";
		}
		
	}

	private String saveFile(MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\admin\\images\\aInquiryupload";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String inquiryFileName = file.getOriginalFilename();
		
		String renamePath = savePath + "\\" + inquiryFileName;
		

			file.transferTo(new File(renamePath));
			
		
		
		return inquiryFileName;
	}

}
