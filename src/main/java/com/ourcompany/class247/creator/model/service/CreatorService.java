package com.ourcompany.class247.creator.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;

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
	
	
	

}
