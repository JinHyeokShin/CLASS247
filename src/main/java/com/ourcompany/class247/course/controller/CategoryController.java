package com.ourcompany.class247.course.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CategoryController {

	/** 1. 메뉴바 카테고리 선택시 이동
	 * @return
	 */
	@RequestMapping("categoryList.do")
	public String categoryList() {
		return "user/course/categoryList";
	}
	

	
}
