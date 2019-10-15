package com.ourcompany.class247.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	public Member selectMember(int memNum) {
		return sqlSession.selectOne("memberMapper.selectMember", memNum);
	}
}
