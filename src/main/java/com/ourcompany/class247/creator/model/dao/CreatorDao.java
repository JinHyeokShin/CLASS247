package com.ourcompany.class247.creator.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.payment.model.vo.Chart;

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

	/** 크리에이터 정보 수정 
	 * @param newCre
	 * @return
	 */
	public int updateCreator(Creator newCre) {
		return sqlSession.update("creatorMapper.updateCreator", newCre);
	}

	/** 크리에이터 탈퇴하기 
	 * @param creNum
	 * @return
	 */
	public int deleteCreator(int creNum) {
		return sqlSession.update("creatorMapper.deleteCreator", creNum);
	}

	/** 해당 크리에이터의 클래스가 존재하는지 확인하는 서비스 
	 * @param creNum
	 * @return
	 */
	public int getCourseCount(int creNum) {
		return sqlSession.selectOne("creatorMapper.getCourseCount", creNum);
	}
	
	
	public ArrayList<Creator> awaitSelectList() {
		return (ArrayList)sqlSession.selectList("creatorMapper.awaitSelectList");
	}
	
	public int allowCreator(int creNum) {
		return sqlSession.update("creatorMapper.allowCreator", creNum);
	}
	
	public int rejectCreator(int creNum) {
		return sqlSession.update("creatorMapper.rejectCreator", creNum);
	}
	
	public ArrayList<Creator> creSelectList() {
		return (ArrayList)sqlSession.selectList("creatorMapper.creSelectList");
	}
	
	public CreatorAttachment selectMyProFile(int creNum) {
		return sqlSession.selectOne("creatorMapper.selectMyProFile", creNum);
	}
	
	public Creator selectACreator(int creNum) {
		return sqlSession.selectOne("creatorMapper.selectACreator", creNum);
	}
	
	public ArrayList<CreatorAttachment> selectCreatorAttachmentList() {
		
		return (ArrayList)sqlSession.selectList("creatorMapper.selectCreatorAttachmentList");
		
	}
	
	public ArrayList<Creator> selectCreatorList() {
		
		return (ArrayList)sqlSession.selectList("creatorMapper.selectCreatorList");
	}

	/** 크리에이터 프로필 사진명 가져오기 
	 * @param creNum
	 * @return
	 */
	public String getCreProfile(int creNum) {
		return sqlSession.selectOne("creatorMapper.getCreProfile", creNum);
	}

	/** 크리에이터 프로필 사진 변경 
	 * @param updateProfile
	 * @return
	 */
	public int updateProfile(CreatorAttachment updateProfile) {
		return sqlSession.update("creatorMapper.updateProfile", updateProfile);
	}
 
	/** 차트 구하기
	 * @param chart
	 * @return
	 */
	public ArrayList<Chart> getChart(Chart chart) {
		ArrayList<Chart> list = (ArrayList)sqlSession.selectList("creatorMapper.selectChart", chart);
		return list;
	}

	public ArrayList<Chart> getOnlineChart(Chart onlineChart) {
		ArrayList<Chart> list = (ArrayList)sqlSession.selectList("creatorMapper.onlineSumChart", onlineChart);
		return list;
	}

	public ArrayList<Chart> getOfflineChart(Chart offlineChart) {
		ArrayList<Chart> list = (ArrayList)sqlSession.selectList("creatorMapper.offlineSumChart", offlineChart);
		return list;
	}

	//크리에이터 급여 명세서 
	public ArrayList<Chart> selectCreSalary(PageInfo pi, int creNum) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("creatorMapper.selectCreSalary", creNum, rowBounds);
	}

	public int selectSalaryCount(int creNum) {
		return sqlSession.selectOne("creatorMapper.selectSalaryCount", creNum);
	}

}
