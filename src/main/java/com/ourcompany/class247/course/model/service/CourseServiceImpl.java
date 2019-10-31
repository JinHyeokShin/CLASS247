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
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.review.model.vo.Review;

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
	
	/** 승인 대기중인 클래스 
	 *
	 */
	@Override
	public ArrayList<Course> selectAwaitByCreNum(int creNum) {
		return coDao.selectAwaitByCreNum(creNum);
	}
	
	
	/** 개강중인 클래스 수 
	 *
	 */
	@Override
	public int getCourseCount(int creNum) {
		return coDao.getCourseCount(creNum);
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
	public ArrayList<CourseAttachment> selectCourseAttachmentList(int courseNum) {

		return coDao.selectCourseAttachmentList(courseNum);
	}

	@Override
	public int allowCourse(int courseNum) {
		return coDao.allowCourse(courseNum);
	}


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
	public ArrayList<SingleCourse> allCourseList() {
		return coDao.allCourseList();
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
	public int getListCount(int memNum) {
		
		return coDao.getListCount(memNum);
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
	public ArrayList<SingleCourse> mySingleCourseList(int creNum) {
		
		ArrayList<SingleCourse> coList = coDao.mySingleCourseList(creNum);
		
		return coList;
	}

	@Override
	public Offline selectOffline(int courseNum) {
		return coDao.selectOffline(courseNum);
	}

	@Override
	public boolean checkLove(Love love) {
		
		return coDao.checkLove(love);
	}

	@Override
	public int insertLove(Love iLove) {
		
		return coDao.insertLove(iLove);
	}

	@Override
	public int cancelLove(Love dLove) {
		
		return coDao.cancelLove(dLove);
	}

	@Override
	public Course coursePayment(int courseNum) {
		
		return coDao.coursePayment(courseNum);
	}
	// 수강페이지를 위한 온라인상세페이지
	@Override
	public Online selectOnline(int courseNum) {
		return coDao.selectOnline(courseNum);
	}

	@Override
	public ArrayList<Review> selectRlist(int courseNum) {
		return coDao.selectRlist(courseNum);
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

	@Override
	public ArrayList<Course> onlinecategoryCraftsList() {
		return coDao.onlinecategoryCraftsList();
	}

	@Override
	public ArrayList<Course> onlinecategoryDesignList() {
		return coDao.onlinecategoryDesignList();
	}

	@Override
	public ArrayList<Course> onlinecategoryDevelopList() {
		return coDao.onlinecategoryDevelopList();
	}

	@Override
	public ArrayList<Course> onlinecategoryDigitalList() {
		return coDao.onlinecategoryDigitalList();
	}

	@Override
	public ArrayList<Course> onlinecategoryLifeList() {
		return coDao.onlinecategoryLifeList();
	}

	@Override
	public ArrayList<Course> onlinecategoryArtList() {
		return coDao.onlinecategoryArtList();
	}

	@Override
	public ArrayList<Course> onlinecategoryCameraList() {
		return coDao.onlinecategoryCameraList();
	}

	@Override
	public ArrayList<Course> onlinecategorySigitureList() {
		return coDao.onlinecategorySigitureList();
	}

	@Override
	public ArrayList<Course> onlinecategoryFoodList() {
		return coDao.onlinecategoryFoodList();
	}

	@Override
	public ArrayList<Course> onlinecategoryMusicList() {
		return coDao.onlinecategoryMusicList();
	}

	@Override
	public ArrayList<Course> onlinecategoryCareerList() {
		return coDao.onlinecategoryCareerList();
	}

	@Override
	public ArrayList<Course> offlinecategoryCraftsList() {
		return coDao.offlinecategoryCraftsList();
	}

	@Override
	public ArrayList<Course> offlinecategoryDesignList() {
		return coDao.offlinecategoryDesignList();
	}

	@Override
	public ArrayList<Course> offlinecategoryDevelopList() {
		return coDao.offlinecategoryDevelopList();
	}

	@Override
	public ArrayList<Course> offlinecategoryDigitalList() {
		return coDao.offlinecategoryDigitalList();
	}

	@Override
	public ArrayList<Course> offlinecategoryLifeList() {
		return coDao.offlinecategoryLifeList();
	}

	@Override
	public ArrayList<Course> offlinecategoryArtList() {
		return coDao.offlinecategoryArtList();
	}

	@Override
	public ArrayList<Course> offlinecategoryCameraList() {
		return coDao.offlinecategoryCameraList();
	}

	@Override
	public ArrayList<Course> offlinecategorySigitureList() {
		return coDao.offlinecategorySigitureList();
	}

	@Override
	public ArrayList<Course> offlinecategoryFoodList() {
		return coDao.offlinecategoryFoodList();
	}

	@Override
	public ArrayList<Course> offlinecategoryMusicList() {
		return coDao.offlinecategoryMusicList();
	}

	@Override
	public ArrayList<Course> offlinecategoryCareerList() {
		return coDao.offlinecategoryCareerList();
	}

	@Override
	public ArrayList<SingleCourse> selectPopList() {
		return coDao.selectPopList();
	}

	@Override
	public int selectMemberCount() {
		return coDao.selectMemberCount();
	}


	@Override
	public int selectCreCount() {
		return coDao.selectCreCount();
	}

	@Override
	public int onlineCourseCount() {
		return coDao.onlineCourseCount();
	}

	@Override
	public int offlineCourseCount() {
		return coDao.offlineCourseCount();
	}

	@Override
	public int insertPayment(Payment payment) {
		return coDao.insertPayment(payment);
	}

	@Override
	public Course selectCourse(int courseNum, String courseKind) {
		return coDao.selectCourse(courseNum, courseKind);
	}

}