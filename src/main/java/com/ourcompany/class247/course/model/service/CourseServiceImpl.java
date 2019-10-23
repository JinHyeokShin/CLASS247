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
public class CourseServiceImpl implements CourseService {

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

		if (result > 0 && result2 > 0) {
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
	 * 
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

	// -------------------- 크리에이터 -------------------

	
	  @Override
	  
	  public Course creSelectCourse(int courseNum, String courseKind) { 
		  return coDao.selectCourse(courseNum, courseKind);
	 
	  }

	@Override
	public CourseAttachment selectCover(int courseNum) {
		return coDao.selectCover(courseNum);
	}

	// --------------------- 관리자-------------------

	/**
	 *
	 */
	@Override
	public ArrayList<Course> selectAwaitCourseList() {

		return coDao.selectAwaitCourseList();
	}

	@Override
	public Online selectOnline(int courseNum) {

		return coDao.selectOnline(courseNum);
	}

	@Override
	public Offline selectOffline(int courseNum) {

		return coDao.selectOffline(courseNum);
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
	public Course selectCourse(int cId, String courseKind) {

		return coDao.selectCourse(cId, courseKind);
	}

	public int rejectCourse(int courseNum) {
		return coDao.rejectCourse(courseNum);
	}
	
	
	@Override
	public Course selectCourse(int courseNum) {
		
		Course c = coDao.selectCourse(courseNum);
		c.setLoveCount(coDao.countLove(courseNum));
		
		return c;
		
	}
	
	@Override
	public ArrayList<Course> selectList() {

		return coDao.selectList();
	}
	

//	@Override
//	public int coursePayment(int courseNum, String courseKind) {
//		return coDao.coursePayment(courseNum, courseKind);
//	}

	@Override
	public ArrayList<Course> modalsearchList(String search) {
		return coDao.modalsearchList(search);
	}

	@Override
	public ArrayList<Course> modalsearchCategory(String categoryName) {
		return coDao.modalsearchCategory(categoryName);
	}
	
	@Override
	public ArrayList<Love> selectLove() {
		
		return coDao.selectLove();
	}
	
	@Override
	public ArrayList<SingleCourse> awaitSelectList() {
		
		return coDao.awaitSelectList();
	
	}
	
	@Override
	public ArrayList<SingleCourse> selectMyTakeCourse(int memNum) {
		return coDao.selectMyTakeCourse(memNum);
	}
	
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
		return coDao.deleteLove(i);
	}


	@Override
	public ArrayList<Course> categoryCraftsList() {
		return coDao.categoryCraftsList();
	}

	@Override
	public ArrayList<Course> categoryDesignList() {
		return coDao.categoryDesignList();
	}

	@Override
	public ArrayList<Course> categoryDevelopList() {
		return coDao.categoryDevelopList();
	}

	@Override
	public ArrayList<Course> categoryDigitalList() {
		return coDao.categoryDigitalList();
	}

	@Override
	public ArrayList<Course> categoryLifeList() {
		return coDao.categoryLifeList();
	}

	@Override
	public ArrayList<Course> categoryArtList() {
		return coDao.categoryArtList();
	}

	@Override
	public ArrayList<Course> categoryCameraList() {
		return coDao.categoryCameraList();
	}

	@Override
	public ArrayList<Course> categorySigitureList() {
		return coDao.categorySigitureList();
	}

	@Override
	public ArrayList<Course> categoryFoodList() {
		return coDao.categoryFoodList();
	}

	@Override
	public ArrayList<Course> categoryMusicList() {
		return coDao.categoryMusicList();
	}

	@Override
	public ArrayList<Course> categoryCareerList() {
		return coDao.categoryCareerList();
	}



}
