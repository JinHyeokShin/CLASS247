package com.ourcompany.class247.course.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.course.model.vo.Course;

@Repository("courseDao")
public class CourseDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Course> awaitCourseList() {
	
		return (ArrayList)sqlSession.selectList("courseMapper.awaitCourseList");
		
	}
}
