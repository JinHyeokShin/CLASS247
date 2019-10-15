package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.dao.CourseDao;
import com.ourcompany.class247.course.model.vo.Course;

@Service("courseService")
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	private CourseDao courseDao;
	

	@Override
	public ArrayList<Course> awaitCourseList() {
		
		return courseDao.awaitCourseList();
	}
	
	

}
