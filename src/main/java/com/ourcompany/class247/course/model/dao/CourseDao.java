package com.ourcompany.class247.course.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;

@Repository("coDao")
public class CourseDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/** 1. 클래스 추가 
	 * @param co
	 * @return
	 */
	public int insertCourse(Course co) {
		return sqlSession.insert("courseMapper.insertCourse", co);
	}
	
	
	public int insertOnline(Online online) {
		return sqlSession.insert("courseMapper.insertOnline", online);
	}
	
	public int insertCourse(Course co, Offline offline) {
		int result = sqlSession.insert("courseMapper.insertCourse", co);
		int result2 = sqlSession.insert("courseMapper.insertOffline", offline);
		
		if(result > 0 && result2 > 0) {
			return 1;
		} else {
			return 0;
		}
	}
	
	
	/** 2. 클래스 커버사진 추가하기 
	 * @param cover
	 * @return
	 */
	public int insertCoverImage(CourseAttachment cover) {
		return sqlSession.insert("courseMapper.insertCoverImage", cover);
	}
	
	
	public ArrayList<Course> selectMyCoList(int creNum){
		return (ArrayList)sqlSession.selectList("courseMapper.selectMyOnlineList", creNum);
		
	}
	
}
