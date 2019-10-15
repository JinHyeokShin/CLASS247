package com.ourcompany.class247.course.model.service;

import com.ourcompany.class247.course.model.vo.Course;

public interface CourseService {
	
	Course getCourse(int couNum);
	
	Course courseDetail(int cId);
}
