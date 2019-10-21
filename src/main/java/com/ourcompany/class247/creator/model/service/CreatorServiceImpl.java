package com.ourcompany.class247.creator.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.creator.model.dao.CreatorDao;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.vo.Member;

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



	/** 크리에이터 로그인 
	 *
	 */
	@Override
	public Creator getCreator(int memNum) {
		return creDao.getCreator(memNum);
	}



	@Override
	public Creator selectCreatorCourse(int courseNum) {
		return creDao.selectCreatorCourse(courseNum);
	}



	@Override
	public ArrayList<CreatorAttachment> selectCreatorAttachmentList(int creNum) {
		return creDao.selectCreatorAttachmentList(creNum);
	}



	@Override
	public ArrayList<Creator> awaitSelectList() {
		
		return creDao.awaitSelectList();
	}



	@Override
	public int allowCreator(int creNum) {
		
		return creDao.allowCreator(creNum);
	}



	@Override
	public int rejectCreator(int creNum) {
		
		return creDao.rejectCreator(creNum);
	}
	
	@Override
	public ArrayList<Creator> creSelectList() {
		return creDao.creSelectList();
	}




	
	


}
