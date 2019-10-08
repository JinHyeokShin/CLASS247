package com.ourcompany.class247.member.model.service;

import com.ourcompany.class247.member.model.vo.Member;

public interface MemberService {

	/** 1. 로그인 메소드
	 * @param m
	 * @return
	 */
	
	Member loginMember(Member m);
	/** 2. 회원가입 서비스를 위한 메소드
	 * @param m
	 * @return
	 */
	int insertMember(Member m);
}
