package com.ourcompany.class247.creator.model.service;

import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;

public interface CreatorService {
	
	Creator getCreator(int memNum);

	int insertCreator(Creator creator);
	
	int insertProfile(CreatorAttachment ca, int memNum);
	
	int insertID(CreatorAttachment ca, int memNum);
	

}
