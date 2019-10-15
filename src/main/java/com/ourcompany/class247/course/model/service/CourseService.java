package com.ourcompany.class247.course.model.service;

import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;

public interface CourseService {

	// 1. 클래스 추가 
	int insertCourse(Course co);
	
	// 2. 클래스 커버사진 추가 
	int insertCoverImage(CourseAttachment cover);
}
