package com.ourcompany.class247.course.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.course.model.vo.Video;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.review.model.vo.Review;

@Repository("coDao")
public class CourseDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 1. 클래스 추가
	 * 
	 * @param co
	 * @return
	 */
	public int insertCourse(Course co) {
		int result = sqlSession.insert("courseMapper.insertCourse", co);
		if (result < 1) {
			sqlSession.delete("courseMapper.deleteCourse", co);
			return 0;
		} else {
			return 1;
		}
	}

	public int insertOnline(Online online) {
		return sqlSession.insert("courseMapper.insertOnline", online);
	}

	public int insertCourse(Course co, Offline offline) {
		int result = sqlSession.insert("courseMapper.insertCourse", co);
		int result2 = sqlSession.insert("courseMapper.insertOffline", offline);

		if (result > 0 && result2 > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * 2. 클래스 커버사진 추가하기
	 * 
	 * @param cover
	 * @return
	 */
	public int insertCoverImage(CourseAttachment cover) {
		return sqlSession.insert("courseMapper.insertCoverImage", cover);
	}

	// 크리에이터센터 - 마이 클래스 관리
	public ArrayList<Course> selectMyCoList(int creNum) {

		ArrayList<Course> onlineList = (ArrayList) sqlSession.selectList("courseMapper.selectMyOnlineList", creNum);
		ArrayList<Course> offlineList = (ArrayList) sqlSession.selectList("courseMapper.selectMyOfflineList", creNum);

		onlineList.addAll(offlineList);

		return onlineList;

	}
	
	// 크리에이터 센터 - 승인 대기중인 클래스 목록 
	public ArrayList<Course> selectAwaitByCreNum(int creNum) {
		ArrayList<Course> awaitList = (ArrayList) sqlSession.selectList("courseMapper.selectAwaitByCreNum", creNum);
		
		return awaitList;
	}

	// 크리에이터센터 - 마이 클래스 커버사진 불러오기
	public ArrayList<CourseAttachment> selectCoverList(int creNum) {
		return (ArrayList) sqlSession.selectList("courseMapper.selectCoverList", creNum);
	}

	public CourseAttachment selectCover(int courseNum) {
		return sqlSession.selectOne("courseMapper.selectCover", courseNum);
	}
	
	
	
	/** 개강중인 클래스 수 
	 * @param creNum
	 * @return
	 */
	public int getCourseCount(int creNum) {
		return sqlSession.selectOne("courseMapper.getCourseCount", creNum);
		
	}


	// 관리자용
	public ArrayList<Course> selectAwaitCourseList() {

		return (ArrayList) sqlSession.selectList("courseMapper.awaitCourseList");

	}

	public Offline selectOffline(int courseNum) {
		return sqlSession.selectOne("courseMapper.selectOffline", courseNum);
	}

	public Online selectOnline(int courseNum) {
		return sqlSession.selectOne("courseMapper.selectOnline", courseNum);
	}

	public ArrayList<CourseAttachment> selectCourseAttachmentList(int courseNum) {

		return (ArrayList) sqlSession.selectList("courseMapper.selectCourseAttachmentList", courseNum);
	}

	public int allowCourse(int courseNum) {

		return sqlSession.update("courseMapper.allowCourse", courseNum);
	}

	// 김은

	
	  public Course selectCourse(int courseNum) {
		  return sqlSession.selectOne("courseMapper.selectCourse", courseNum); 
		  }
	
	public int rejectCourse(int courseNum) {
		
		return sqlSession.update("courseMapper.rejectCourse", courseNum);
	}
	
	public ArrayList<SingleCourse> allCourseList() {
		return (ArrayList)sqlSession.selectList("courseMapper.allCourseList");
	}
	

	
	
	//김은기
	public ArrayList<Course> selectList(){
		return (ArrayList)sqlSession.selectList("courseMapper.selectList");
	}
	
	
	public int countLove(int courseNum) {
		return sqlSession.selectOne("courseMapper.countLove", courseNum);
	}
	
	
	
	public Course selectCourse(int courseNum, String courseKind) {
	      Course co;
	      if(courseKind.equals("online")) { //온라인 클래스일경우
	         co = sqlSession.selectOne("courseMapper.selectOnline", courseNum);
	      } else { //오프라인클래스일 경우 
	         co = sqlSession.selectOne("courseMapper.selectOffline", courseNum);

		  }
			 return co;
	}
	
	public ArrayList<Love> selectLove() {
		
		return (ArrayList)sqlSession.selectList("courseMapper.selectLove");
	}
	
	public ArrayList<SingleCourse> awaitSelectList() {
		
		return (ArrayList)sqlSession.selectList("courseMapper.awaitCourseList");
	
	
	}
	
	public ArrayList<SingleCourse> selectMyTakeCourse(int memNum) {
		
		return (ArrayList)sqlSession.selectList("courseMapper.selectMyTakeCourse", memNum);
	}
	
	
	
	//사용자 단
	public ArrayList<SingleCourse> selectPopList(){
		return (ArrayList)sqlSession.selectList("courseMapper.selectPopList");
	}
   // --------------------------------------------------김은기--------------------------------------------------
   

   
   
   public ArrayList<Review> selectReviewList(int rId){
		return (ArrayList)sqlSession.selectList("courseMapper.selectReviewList", rId);
	}
	
	public int insertReview(Review r) {
		return sqlSession.insert("courseMapper.insertReview", r);
	}
	public int getListCount(int memNum) {

		return sqlSession.selectOne("courseMapper.getListCount",memNum);
	}
	
	public ArrayList<Love> lovelist(int memNum, PageInfo pi) {
		

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("courseMapper.selectLove", memNum, rowBounds );

	}
	
	public int deleteLove(Love i) {
		
		return sqlSession.delete("courseMapper.deleteLove", i );
		
	}

		public Course coursePayment(int courseNum, String courseKind) {
	      Course co;
	      if(courseKind.equals("online")) { //온라인 클래스일경우
	         co = sqlSession.selectOne("courseMapper.selectOnlinePayment", courseNum);
	      } else { //오프라인클래스일 경우 
	         co = sqlSession.selectOne("courseMapper.selectOfflinePayment", courseNum);
	      }
	     
	      return co;
	   }

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> modalsearchList(String search){
		return (ArrayList)sqlSession.selectList("courseMapper.modalsearchList",search);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> modalsearchCategory(String categoryName){
		return (ArrayList)sqlSession.selectList("courseMapper.modalsearchCategory",categoryName);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryCraftsList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryCraftsList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryDesignList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryDesignList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryDevelopList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryDevelopList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryDigitalList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryDigitalList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryLifeList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryLifeList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryArtList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryArtList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryCameraList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryCameraList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categorySigitureList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categorySigitureList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryFoodList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryFoodList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryMusicList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryMusicList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> categoryCareerList() {
		return (ArrayList)sqlSession.selectList("courseMapper.categoryCareerList");
	}
	public int checkLove(Love love) {
		
		
		return sqlSession.selectOne("courseMapper.checkLove",love);
		
	}
	public int insertLove(Love iLove) {
		
		return sqlSession.insert("courseMapper.insertLove", iLove);
	}
	public int cancelLove(Love dLove) {
		return sqlSession.delete("courseMapper.cancelLove",dLove);
	}
	public Course coursePayment(int courseNum) {
    
    return sqlSession.selectOne("courseMapper.coursePayment", courseNum);
	}
	public ArrayList<Review> selectRlist(int courseNum) {
		
		return (ArrayList)sqlSession.selectList("courseMapper.selectRlist",courseNum);
	}
	public Creator selectCreator(int creNum) {
		return sqlSession.selectOne("courseMapper.selectCreator",creNum);
	}
	/* 온라인 카테고리 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryCraftsList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryCraftsList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryDesignList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryDesignList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryDevelopList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryDevelopList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryDigitalList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryDigitalList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryLifeList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryLifeList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryArtList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryArtList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryCameraList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryCameraList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategorySigitureList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategorySigitureList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryFoodList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryFoodList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryMusicList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryMusicList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> onlinecategoryCareerList() {
		return (ArrayList)sqlSession.selectList("courseMapper.onlinecategoryCareerList");
	}
	
	/* 오프라인 카테고리 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryCraftsList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryCraftsList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryDesignList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryDesignList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryDevelopList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryDevelopList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryDigitalList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryDigitalList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryLifeList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryLifeList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryArtList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryArtList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryCameraList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryCameraList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategorySigitureList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategorySigitureList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryFoodList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryFoodList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryMusicList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryMusicList");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> offlinecategoryCareerList() {
		return (ArrayList)sqlSession.selectList("courseMapper.offlinecategoryCareerList");
	}

	
	public ArrayList<SingleCourse> mySingleCourseList(int creNum) {
		return (ArrayList)sqlSession.selectList("courseMapper.mySingleCourseList", creNum);
	}
	
	public int selectMemberCount() {
		return sqlSession.selectOne("courseMapper.selectMemberCount");
	}
	public int selectCreCount() {
		return sqlSession.selectOne("courseMapper.selectCreCount");
	}
	public int onlineCourseCount() {
		return sqlSession.selectOne("courseMapper.onlineCourseCount");
	}
	
	public int offlineCourseCount() {
		return sqlSession.selectOne("courseMapper.offlineCourseCount");
	}

	public int insertPayment(Payment payment) {
	   return sqlSession.insert("courseMapper.insertPayment", payment);
   }

	public int insertVideo(Video v) {
		return sqlSession.insert("courseMapper.insertVideo", v);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Video> selectVideoList(int courseNum){
		return (ArrayList)sqlSession.selectList("courseMapper.selectVideoList",courseNum);
	}

	public Video selectVideo(int videoCourse) {
		return sqlSession.selectOne("courseMapper.selectVideo",videoCourse);
	}
	//클래스 삭제 
	public int deleteCourse(int courseNum) {
		return sqlSession.update("courseMapper.deleteCourse2", courseNum);
	}

	/** 크리에이터 별점 평균 가져오기 
	 * @param creNum
	 * @return
	 */
	public double getScoreSum(int creNum) {
		return sqlSession.selectOne("courseMapper.getScoreSum", creNum);
	}
	
	
	public ArrayList<SingleCourse> personStat(int categroyNum) {
		return (ArrayList)sqlSession.selectList("courseMapper.personStat", categroyNum);
	}
	
	public ArrayList<SingleCourse> peceiptList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("courseMapper.peceiptList", null, rowBounds);
	}
	
	public int peceiptCount() {
		return sqlSession.selectOne("courseMapper.peceiptCount");
	}
	
	public int aPeceiptCount() {
		return sqlSession.selectOne("courseMapper.aPeceiptCount");
	}
	
	public ArrayList<SingleCourse> aPeceiptList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("courseMapper.aPeceiptList", null, rowBounds);
	}
	
	public int logger() {
		return sqlSession.insert("courseMapper.logger");
	}
	
	public int checkLogger() {
		return sqlSession.selectOne("courseMapper.checkLogger");
	}
	
	public ArrayList<SingleCourse> peceiptList() {
		return (ArrayList)sqlSession.selectList("courseMapper.aPeceiptList");
	}
	
	public int insertPeceipt(SingleCourse peceipt) {
		return sqlSession.insert("courseMapper.insertPeceipt", peceipt);
	}
	
	public int checkPeceipt() {
		return sqlSession.selectOne("courseMapper.checkPeceipt");
	}
	
	public int selectOCou() {
		return sqlSession.selectOne("courseMapper.selectOCou");
	}
	
	public int selectICou() {
		return sqlSession.selectOne("courseMapper.selectICou");
	}
	
	public int selectMCou() {
		return sqlSession.selectOne("courseMapper.selectMCou");
	}
	public int selectMPrice() {
		return sqlSession.selectOne("courseMapper.selectMPrice");
	}
	/** 거절된 클래스 가져오기 
	 * @param creNum
	 * @return
	 */
	public ArrayList<Course> selectRejectByCreNum(int creNum) {
		return (ArrayList)sqlSession.selectList("courseMapper.selectRejectClassByCreNum", creNum);
	}
}
