package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.dao.CourseDao;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;

@Service("coService")
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	private CourseDao coDao;

	/**
	 * 1. 온라인 클래스 추가 
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
	 * 1_1. 오프라인 클래스 추가 
	 */
	public int insertCourse(Course co, Offline offline) {
		return coDao.insertCourse(co, offline);
	}
	

	/**
	 * 1_2. 클래스 커버사진 추가 
	 */
	@Override
	public int insertCoverImage(CourseAttachment cover) {
		return coDao.insertCoverImage(cover);
	}
 
	/**
	 * 2. 내 클래스 리스트 가져오기 
	 * @return 
	 */
	@Override
	public ArrayList<Course> selectMyCoList(int creNum) {
		return coDao.selectMyCoList(creNum);
		
	}
	

}
