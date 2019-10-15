package com.ourcompany.class247.course.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
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

@Controller
public class CourseController {
	
	@Autowired
	private CourseService coService;
	
	
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


	@RequestMapping("aAwaitCourseList.do")
	public ModelAndView awaitCourseList() {
		
		
		
		
		return mv;
	}

}
