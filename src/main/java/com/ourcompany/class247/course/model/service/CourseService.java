package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.course.model.vo.Course;

public interface CourseService {
	
	ArrayList<Course> selectList();
	
//	Course getCourse(int couNum);
//	
	Course courseDetail(int cId);
}
