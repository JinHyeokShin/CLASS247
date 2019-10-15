package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.course.model.vo.Course;

public interface CourseService {
	
	/**
	 * 승인대기중인 수업리스트 불러오기
	 * @return
	 */
	public ArrayList<Course> awaitCourseList();

}
