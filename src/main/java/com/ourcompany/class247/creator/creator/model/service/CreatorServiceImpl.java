package com.ourcompany.class247.creator.creator.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.creator.creator.model.dao.CreatorDao;
import com.ourcompany.class247.creator.creator.model.vo.Creator;
import com.ourcompany.class247.creator.creator.model.vo.CreatorAttachment;

@Service("creService")
public class CreatorServiceImpl implements CreatorService{
	
	@Autowired
	private CreatorDao creDao;


	/** 1. 크리에이터 기본정보 추가 
	 *
	 */
	@Override
	public int insertCreator(Creator creator) {
		return creDao.insertCreator(creator);
	}

	
	
	/**1_1. 크리에이터 프로필 사진 저장 
	 *
	 */
	@Override
	public int insertProfile(CreatorAttachment ca, int memNum) {
		int creNum = creDao.getCreNum(memNum);
		ca.setCreNum(creNum);
		return creDao.insertProfile(ca);
	}



	/** 1_2. 크리에이터 신분증 저장
	 *
	 */
	@Override
	public int insertID(CreatorAttachment ca, int memNum) {
		int creNum = creDao.getCreNum(memNum);
		ca.setCreNum(creNum);
		return creDao.insertID(ca);
	}


}
