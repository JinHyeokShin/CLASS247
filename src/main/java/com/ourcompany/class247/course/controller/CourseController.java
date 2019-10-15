package com.ourcompany.class247.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.Course;

@SessionAttributes("loginUser") 

@Controller
public class CourseController {
	
	@Autowired
	private CourseService couService;
	
//		@RequestMapping("courseDetail.do")
//		public ModelAndView courseDetail(int cId, ModelAndView mv) {
//				
//				Course c  = couService.courseDetail(cId);
//			
//				if(c != null) {
//					mv.addObject("c", c)
//					  .setViewName("course/course-details");
//					
//				}else {
//					mv.addObject("msg", "게시글 상세조회실패!")
//					  .setViewName("common/errorPage");
//				}
//				
//				return mv;
//			
//		}
	@RequestMapping("courseDetail.do")
	public String courseDetail() {
			return "userCourseDetail";
				
		
	}
	
}
