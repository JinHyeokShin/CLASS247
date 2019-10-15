package com.ourcompany.class247.course.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.dao.CourseDao;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;

@Service("coService")
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	private CourseDao coDao;

	/**
	 * 1. 클래스 추가 
	 */
	@Override
	public int insertCourse(Course co) {
		return coDao.insertCourse(co);
	}

	/**
	 * 2. 클래스 커버사진 추가 
	 */
	@Override
	public int insertCoverImage(CourseAttachment cover) {
		return coDao.insertCoverImage(cover);
	}
	

}
