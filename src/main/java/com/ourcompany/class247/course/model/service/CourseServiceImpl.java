package com.ourcompany.class247.course.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.dao.CourseDao;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Online;

@Service("coService")
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	private CourseDao coDao;

	/**
	 * 1. 클래스 추가 
	 */
	@Override
	public int insertCourse(Course co, Online online) {
		
		int result = coDao.insertCourse(co); 
		
		int result2 = 0;
		if (result > 0) {
			result2 = coDao.insertOnline(online);			
		}
		
		if(result > 0 && result2 > 0) {
			return 1;
		} else {
			return 0;
		}
		
		
		
	}

	/**
	 * 2. 클래스 커버사진 추가 
	 */
	@Override
	public int insertCoverImage(CourseAttachment cover) {
		return coDao.insertCoverImage(cover);
	}
	

}
