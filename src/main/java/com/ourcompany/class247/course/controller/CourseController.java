package com.ourcompany.class247.course.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author JinHyuk
 *
 */
@Controller
public class CourseController {
	// 1. 온라인 클래스 리스트로 이동
	@RequestMapping("goOnline.do")	
	public String goOnline() {
		return "user/course/OnlineList";
	}
	
	// 2. 오프라인 클래스 리스트로 이동
	@RequestMapping("goOffline.do")
	public String goOffline() {
		return "user/course/OfflineList";
	}
}
