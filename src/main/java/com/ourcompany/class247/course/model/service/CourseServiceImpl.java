package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.dao.CourseDao;
import com.ourcompany.class247.course.model.vo.Course;

@Service("couService")
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	private CourseDao couDao;

//	@Override
//	public Course getCourse(int couNum) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
	@Override
	public Course courseDetail(int cId) {
	
			return couDao.courseDetail(cId);
				
				
	}

	@Override
	public ArrayList<Course> selectList() {
		
		return couDao.selectList();
	}

}
