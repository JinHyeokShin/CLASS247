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

	// 크리에이터센터 - 마이 클래스 커버사진 불러오기
	public ArrayList<CourseAttachment> selectCoverList(int creNum) {
		return (ArrayList) sqlSession.selectList("courseMapper.selectCoverList", creNum);
	}

	public CourseAttachment selectCover(int courseNum) {
		return sqlSession.selectOne("courseMapper.selectCover", courseNum);
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


	
	
	
	
	
	
	public int rejectCourse(int courseNum) {
		
		return sqlSession.update("courseMapper.rejectCourse", courseNum);
	}
	
	
	//김은기
	public ArrayList<Course> selectList(){
		return (ArrayList)sqlSession.selectList("courseMapper.selectList");
	}
	
	
	public int countLove(int courseNum) {
		return sqlSession.selectOne("courseMapper.countLove", courseNum);
	}
	
	public Course selectCourse(int courseNum) {
		return sqlSession.selectOne("courseMapper.selectCourse", courseNum);
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
	
	
	public int getListCount() {

		return sqlSession.selectOne("courseMapper.getListCount");
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
//	public Course coursePayment(int courseNum, String courseKind) {
//	      Course co;
//	      if(courseKind.equals("online")) { //온라인 클래스일경우
//	         co = sqlSession.insert("courseMapper.selectOnlinePayment", courseNum);
//	      } else { //오프라인클래스일 경우 
//	         co = sqlSession.insert("courseMapper.selectOfflinePayment", courseNum);
//	      }
//	     
//	      return co;
//	   }
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> modalsearchList(String search){
		return (ArrayList)sqlSession.selectList("courseMapper.modalsearchList",search);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> modalsearchCategory(int categoryNum){
		return (ArrayList)sqlSession.selectList("courseMapper.modalsearchCategory",categoryNum);
	}
	
	public ArrayList<SingleCourse> mySingleCourseList(int creNum) {
		return (ArrayList)sqlSession.selectList("courseMapper.mySingleCourseList", creNum);
	}
}
