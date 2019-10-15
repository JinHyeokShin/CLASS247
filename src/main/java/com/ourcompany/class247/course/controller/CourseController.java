package com.ourcompany.class247.course.controller;

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

import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.service.MemberService;
import com.ourcompany.class247.member.model.vo.Member;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService coService;
	private MemberService mService;
	private CreatorService creService;
	
	
	@RequestMapping("coNext.do")
	public ModelAndView insertCourse(Course co,  ModelAndView mv) {
		
			
			if(co.getCourseKind().equals("online")) {
				mv.addObject("co", co);
				mv.setViewName("creator/course/nextOnline");
			} else {
				mv.addObject("co", co);
				mv.setViewName("creator/course/nextOffline");
			}
			
			return mv;

			
	}
	
	
	
	
	@RequestMapping("onlineInsert.do")
	public String insertOnline(Course co, Online online, HttpServletRequest request,
							@RequestParam(name="coverImage") MultipartFile coverImage) {
		
		
		int result = coService.insertCourse(co, online);
		
		
		if(result > 0) {
			if(!coverImage.getOriginalFilename().equals("")) {
				String coverRename = saveFile(coverImage, request);
				
				if(coverRename != null) {
					CourseAttachment cover = new CourseAttachment();
					cover.setCoaRName(coverRename);
					cover.setCoaOName(coverImage.getOriginalFilename());
					cover.setCoaPath(request.getSession().getServletContext().getRealPath("resources") + "\\course\\images");
					
					coService.insertCoverImage(cover);
				}
				
			}
		}
		
		return "redirect:cMainView.do";
	}
	
	
	/** 3. 파일 저장하기 
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		
		//파일이 저장될 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\course\\images";
		
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


	/**
	 * admin 1. 승인대기중인 리스트 불러오기
	 * @return
	 */
	@RequestMapping("aAwaitCourseList.do")
	public ModelAndView awaitCourseList() {
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Course> list = coService.selectAwaitCourseList();
		
		mv.addObject("list", list);
		mv.setViewName("admin/course/awaitCourseList");
		
		return mv;
	}
	
	@RequestMapping("aAwaitCourseDetail.do")
	public ModelAndView aAwaitCourseDetail(int courseNum) {
		
		ModelAndView mv = new ModelAndView();
		
		Course co = coService.selectCourseList(courseNum);
		
		ArrayList<CourseAttachment> coaList = coService.selectCourseAttachment(co.getCourseNum());
		
		Creator cre = creService.selectCreator(courseNum);
		
		ArrayList<CreatorAttachment> craList = creService.selectCreatorAttachment(cre.getCreNum());
		
		Member m = mService.selectMember(cre.getMemNum());
		
		mv.addObject(co).addObject(coaList).addObject(cre).addObject(craList).addObject(m);
		
		mv.setViewName("admin/course/);
		
		return mv;
		
	}

}
