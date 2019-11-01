package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.course.model.vo.Video;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.review.model.vo.Review;
import com.ourcompany.class247.review.model.vo.ReviewReply;

public interface CourseService {

	// 1. 온라인 클래스 추가 
	int insertCourse(Course co, Online online);
	
	//1_1. 오프라인 클래스 추가 (오버로드)
	int insertCourse(Course co, Offline offline);

	// 1_2. 클래스 커버사진 추가 
	int insertCoverImage(CourseAttachment cover);

	
	// 2. 내 클래스 리스트 가져오기 
	ArrayList<Course> selectMyCoList(int creNum);

	//3. 클래스 메인커버사진리스트 가져오기 
	ArrayList<CourseAttachment> selectCoverList(int creNum);
	
	//-------------------- 크리에이터용 
	//Course selectCourse(int courseNum, String courseKind);
	
	//크리에이터센터 - 승인대기중인 목록 
	ArrayList<Course> selectAwaitByCreNum(int creNum);
	
	CourseAttachment selectCover(int courseNum);
	
	//--------------------- 관리용
	// 1. 대기중인 클래스 리스트 추가 
	ArrayList<Course> selectAwaitCourseList();
	
	ArrayList<CourseAttachment> selectCourseAttachmentList(int courseNum);
	
	int allowCourse(int courseNum);
	// 3. 오프라인 클래스 가지고 오기
	public Offline selectOffline(int courseNum);
	
	int rejectCourse(int courseNum);
	
	Course selectCourse(int courseNum, String courseKind);
	
	ArrayList<SingleCourse> allCourseList();
	
	//클래스리스트 가지고 오기	
	ArrayList<Course> selectList();
	
	//클래스 상세보기
	Course selectCourse(int courseNum);
	
	Creator selectCreator(int creNum);
	
	ArrayList<Review> selectRlist(int courseNum);

	ArrayList<SingleCourse> selectMyTakeCourse(int memNum);
	
	ArrayList<SingleCourse> mySingleCourseList(int creNum);
	
	
	/*사용자 페이지*/
	
	//페이징처리
	int getListCount(int memNum);

	//찜하기 리스트 가져오기
	ArrayList<Love> lovelist(int memNum, PageInfo pi);

	//찜하기 리스트 선택 삭제하기
	int deleteLove(Love i);

	int insertRReview(Review review);
	
	int getReviewReplyListCount(int courseNum);
	
	// 댓글작성
	int insertReviewReply(ReviewReply rr);
	
	// 대댓글 작성
	int insertRReviewReply(ReviewReply rr);
	
	// 부모찾기
		ReviewReply selectParentReply(int rReplyNum);
		
		// 자식찾기
		int selectChild(int rReplyNum);
		
		// 자식이 있을 때
		int updateReplyY(int rReplyNum);
		
		// 자식이 없을 때
		int updateReplyN(int rReplyNum);
		
	
	// 댓글 수정
	int updateReply(ReviewReply rr);
	
	ArrayList<ReviewReply> selectRReplyList(int courseNum, PageInfo rpi);
	
	ArrayList<Love> selectLove();
	
	ArrayList<SingleCourse> awaitSelectList();
	
	ArrayList<Course> modalsearchList(String search);
	
	ArrayList<Course> modalsearchCategory(String categoryName);

	Online selectOnline(int courseNum);

	Course creSelectCourse(int courseNum, String courseKind);
	
	ArrayList<SingleCourse> selectPopList();
	
	/* categoryList.do에 적용되는 서비스 */
	ArrayList<Course> categoryCraftsList();
	ArrayList<Course> categoryDesignList();
	ArrayList<Course> categoryDevelopList();
	ArrayList<Course> categoryDigitalList();
	ArrayList<Course> categoryLifeList();
	ArrayList<Course> categoryArtList();
	ArrayList<Course> categoryCameraList();
	ArrayList<Course> categorySigitureList();
	ArrayList<Course> categoryFoodList();
	ArrayList<Course> categoryMusicList();
	ArrayList<Course> categoryCareerList();
	
	/* onlineCategoryList.do에 적용되는 서비스 */
	ArrayList<Course> onlinecategoryCraftsList();
	ArrayList<Course> onlinecategoryDesignList();
	ArrayList<Course> onlinecategoryDevelopList();
	ArrayList<Course> onlinecategoryDigitalList();
	ArrayList<Course> onlinecategoryLifeList();
	ArrayList<Course> onlinecategoryArtList();
	ArrayList<Course> onlinecategoryCameraList();
	ArrayList<Course> onlinecategorySigitureList();
	ArrayList<Course> onlinecategoryFoodList();
	ArrayList<Course> onlinecategoryMusicList();
	ArrayList<Course> onlinecategoryCareerList();
	
	/* offlineCategoryList.do에 적용되는 서비스 */
	ArrayList<Course> offlinecategoryCraftsList();
	ArrayList<Course> offlinecategoryDesignList();
	ArrayList<Course> offlinecategoryDevelopList();
	ArrayList<Course> offlinecategoryDigitalList();
	ArrayList<Course> offlinecategoryLifeList();
	ArrayList<Course> offlinecategoryArtList();
	ArrayList<Course> offlinecategoryCameraList();
	ArrayList<Course> offlinecategorySigitureList();
	ArrayList<Course> offlinecategoryFoodList();
	ArrayList<Course> offlinecategoryMusicList();
	ArrayList<Course> offlinecategoryCareerList();
	//크리에이터센터 - 클래스 수 
	int getCourseCount(int creNum);
	
	int checkLove(Love love);
	
	int insertLove(Love iLove);
	
	int cancelLove(Love dLove);
	
	CourseAttachment selectCA(int courseNum);
	
	Course coursePayment(int courseNum);
	
	int selectMemberCount();
	
	int selectCreCount();

	int onlineCourseCount();
	
	int offlineCourseCount();
	
	int insertPayment(Payment payment);
	
	// 7. 게시글에 딸려있는 댓글 리스트 조회
		ArrayList<Review> selectReviewList(int rId);
		
		
		// 8. 댓글 작성하기 
		int insertReview(Review r);

	int insertVideo(Video v);
}
