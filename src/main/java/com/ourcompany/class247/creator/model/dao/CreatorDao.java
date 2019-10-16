package com.ourcompany.class247.creator.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;

@Repository("creDao")
public class CreatorDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/** 1. 크리에이터 기본 정보 추가 
	 * @param creator
	 * @return
	 */
	public int insertCreator(Creator creator) {
		return sqlSession.insert("creatorMapper.insertCreator", creator);
	}
	
	/** 회원번호로 크리에이터번호 가져오기
	 * @param memNum
	 * @return
	 */
	public int getCreNum(int memNum) {
		return sqlSession.selectOne("creatorMapper.selectCreNum", memNum);
	}
	
	/** 1_1. 크리에이터 프로필 사진 추가
	 * @param ca
	 * @return
	 */
	public int insertProfile(CreatorAttachment ca) {
		return sqlSession.insert("creatorMapper.insertProfile", ca);
	}
	
	
	/** 1_2. 크리에이터 신분증 사진 추가
	 * @param ca
	 * @return
	 */
	public int insertID(CreatorAttachment ca) {
		return sqlSession.insert("creatorMapper.insertID", ca);
	}
	
	public Creator getCreator(int memNum) {
		return sqlSession.selectOne("creatorMapper.selectCreator", memNum);
	}
	
	public Creator selectCreatorCourse(int courseNum) {
		return sqlSession.selectOne("creatorMapper.selectCreatorCourse", courseNum);
	}
	
	public ArrayList<CreatorAttachment> selectCreatorAttachmentList(int creNum) {
		return (ArrayList)sqlSession.selectList("creatorMapper.selectCreatorAttachmentList", creNum);
	}
	
	

}
