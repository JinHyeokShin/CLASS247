package com.ourcompany.class247.course.controller;

import java.util.ArrayList;

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
	
		
		
		@RequestMapping("couDetail.do")
		public ModelAndView courseDetail(int cId, ModelAndView mv) {
			
			Course c = couService.courseDetail(cId);
			
			if(c != null) {
				mv.addObject("c", c)
				  .setViewName("creator/course/userCourseDetail");
				
			}else {
				mv.addObject("msg", "게시글 상세조회실패!")
				  .setViewName("common/errorPage");
			}
			
			return mv;
			
		}
		
		@RequestMapping("coulist.do")
		public ModelAndView selectList(ModelAndView mv) {
			ArrayList<Course> list = couService.selectList();
			System.out.println(list);
			
			mv.addObject("list", list);
			mv.setViewName("views/home");
			
			return mv;
		}


	
}
