package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Online;

public interface CourseService {

	// 1. 온라인 클래스 추가 
	int insertCourse(Course co, Online online);
	

	
	// 2. 클래스 커버사진 추가 
	int insertCoverImage(CourseAttachment cover);

	
	// 3. 대기중인 클래스 리스트 추가 
	public ArrayList<Course> selectAwaitCourseList();
}
