package com.ourcompany.class247.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ourcompany.class247.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession; // 얘는 root-context.xml 파일에서 빈으로 등록되어있다
	
	public Member loginMember(Member m) {

		return sqlSession.selectOne("memberMapper.loginMember",m);
	}
	
	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
}
