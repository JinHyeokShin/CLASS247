package com.ourcompany.class247.course.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.course.model.vo.Course;

@Repository("couDao")
public class CourseDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Course courseDetail(int cId) {
		return sqlSession.selectOne("courseMapper.selectCourse", cId);
	}
	
}
