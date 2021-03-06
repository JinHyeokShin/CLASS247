package com.ourcompany.class247.creator.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.payment.model.vo.Chart;

public interface CreatorService {
	
	Creator getCreator(int memNum);

	int insertCreator(Creator creator);
	
	int insertProfile(CreatorAttachment ca, int memNum);
	
	int insertID(CreatorAttachment ca, int memNum);
	
	Creator selectCreatorCourse(int courseNum);
	
	ArrayList<CreatorAttachment> selectCreatorAttachmentList(int creNum);

	int updateCreator(Creator newCre);

	int deleteCreator(int creNum);

	int getCourseCount(int creNum);
	
	Creator selectACreator(int creNum);
	
	ArrayList<Creator> awaitSelectList();
	
	int allowCreator(int creNum);
	
	int rejectCreator(int creNum);
	
	ArrayList<Creator> creSelectList();
	
	CreatorAttachment selectMyProFile(int creNum);
	
	//크리에이터 프로필 사진명 가져오기
	String getCreProfile(int creNum);
	
	ArrayList<Creator> selectCreatorList();
	
	ArrayList<CreatorAttachment> selectCreatorAttachmentList();

	//크리에이터 프로필 사진 변경 
	int updateProfile(CreatorAttachment update);
	
	//차트 구하기 
	ArrayList<Chart> getChart(Chart chart);
	
	int selectTCre();
	int selectMCre();
	ArrayList<Chart> getOnlineChart(Chart onlineChart);

	ArrayList<Chart> getOfflineChart(Chart offlineChart);
	
	//크리에이터 급여 명세서 
	ArrayList<Chart> selectCreSalary(PageInfo pi, int creNum);

	int selectSalaryCount(int creNum);
	
	//MD 클래스 선택 옵션
	ArrayList<Course> getCourseList(int creNum);

	int reRegister(Creator creator);

	void reRegisterProfile(CreatorAttachment caProfile);

	void reRegisterID(CreatorAttachment caId);



}
