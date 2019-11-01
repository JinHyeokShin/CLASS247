package com.ourcompany.class247.creator.model.service;

import java.util.ArrayList;

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


}
