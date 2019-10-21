package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.course.model.dao.CourseDao;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.course.model.vo.SingleCourse;

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

	/**
	 * 3. 클래스 메인커버사진리스트 가져오기 
	 */
	@Override
	public ArrayList<CourseAttachment> selectCoverList(int creNum) {
		return coDao.selectCoverList(creNum);
	}
	
	
	//-------------------- 크리에이터 -------------------
	
	@Override
	public Course selectCourse(int courseNum, String courseKind) {
		return coDao.selectCourse(courseNum, courseKind);
	
	}
	
	@Override
	public CourseAttachment selectCover(int courseNum) {
		return coDao.selectCover(courseNum);
	}

	//--------------------- 관리자-------------------
	
	
	/**
	 *
	 */
	@Override
	public ArrayList<Course> selectAwaitCourseList() {
		
		return coDao.selectAwaitCourseList();
	}

	@Override
	public ArrayList<CourseAttachment> selectCourseAttachmentList(int courseNum) {
		
		return coDao.selectCourseAttachmentList(courseNum);
	}
	
	@Override
	public int allowCourse(int courseNum) {
				return coDao.allowCourse(courseNum);
	}
	
	@Override
	public int rejectCourse(int courseNum) {
		return coDao.rejectCourse(courseNum);
	}
	
	
	@Override
	public Course selectCourse(int courseNum) {
		return coDao.selectCourse(courseNum);
	}


	@Override
	public ArrayList<Course> selectList() {
		
		return coDao.selectList();
	}
	
	@Override
	public ArrayList<Love> selectLove() {
		
		return coDao.selectLove();
	}
	
	@Override
	public ArrayList<SingleCourse> awaitSelectList() {
		
		return coDao.awaitSelectList();
	
	
	//사용자 단

	@Override
	public int getListCount() {
		
		return coDao.getListCount();
	}

	@Override
	public ArrayList<Love> lovelist(int memNum, PageInfo pi) {
		
		return coDao.lovelist(memNum, pi);
	}
	
	@Override
	public int deleteLove(Love i) {
		// TODO Auto-generated method stub
		return coDao.deleteLove(i);
	}


	



}
