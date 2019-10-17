package com.ourcompany.class247.course.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;

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

	
	// 관리용
	// 1. 대기중인 클래스 리스트 추가 
	public ArrayList<Course> selectAwaitCourseList();
	
	// 2. 온라인 클래스 가지고 오기
	public Online selectOnline(int courseNum);
	
	// 3. 오파리인 클래스 가지고 오기
	public Offline selectOffline(int courseNum);
	
	public ArrayList<CourseAttachment> selectCourseAttachmentList(int courseNum);
	

	public int allowCourse(int courseNum);

	//클래스리스트 가지고 오기	
	ArrayList<Course> selectList();
	
	//클래스 상세보기
	Course courseDetail(int cId);
	

}
