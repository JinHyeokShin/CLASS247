package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.course.model.vo.SingleCourse;

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
	Course selectCourse(int courseNum, String courseKind);
	
	CourseAttachment selectCover(int courseNum);
	
	//--------------------- 관리용
	// 1. 대기중인 클래스 리스트 추가 
	ArrayList<Course> selectAwaitCourseList();
	
	ArrayList<CourseAttachment> selectCourseAttachmentList(int courseNum);
	
	int allowCourse(int courseNum);
	
	Course selectCourse(int courseNum);

	//클래스리스트 가지고 오기	
	ArrayList<Course> selectList();
	
	//클래스 상세보기
	
	ArrayList<Love> selectLove();
	
	ArrayList<SingleCourse> awaitSelectList();

}
