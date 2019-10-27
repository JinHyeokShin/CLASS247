package com.ourcompany.class247.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginMember(Member m) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}
	
	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}

	public int deleteMember(Member m) {

		return sqlSession.update("memberMapper.deleteMember", m);
	}
	
	public Member selectMember(int memNum) {
		return sqlSession.selectOne("memberMapper.selectMember", memNum);
	}
	
	public ArrayList<Member> selectMemberList() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectMemberList");
	}
	
	
	
	
	//---------------- 크리에이터 -----------------------
	public ArrayList<Member> selectStuList(PageInfo pi, int creNum){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit())
;		
		return (ArrayList)sqlSession.selectList("memberMapper.selectStuByCreNum", creNum, rowBounds);
	}
	
	public ArrayList<Member> selectStuByCo(int courseNum){
		return (ArrayList)sqlSession.selectList("memberMapper.selectStuByCoNum", courseNum);
	}

	/** 페이징 처리를 위한 학생 수 구하기 
	 * @param creNum
	 * @return
	 */
	public int getStuCount(int creNum) {
		return sqlSession.selectOne("memberMapper.getStuCount", creNum);
	}
	
	//---------------- 크리에이터 -----------------------
	public ArrayList<Member> selectBlackList() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectBlackList");
	}
	
	public Member selectAMember(int creNum) {
		return sqlSession.selectOne("memberMapper.selectAMember", creNum);
	}
	
	public int allowCreator(int memNum) {
		return sqlSession.update("memberMapper.allowCreator", memNum);
	}
	
	public int updateBlackList(int memNum) {
		return sqlSession.update("memberMapper.updateBlackList", memNum);
	}
	

	
}
