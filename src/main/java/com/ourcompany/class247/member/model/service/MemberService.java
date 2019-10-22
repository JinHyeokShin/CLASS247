package com.ourcompany.class247.member.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
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
	
	Member selectMember(int memNum);
	
	ArrayList<Member> selectMemberList();
	
	
	
	
	
	
	//---------------- 크리에이터센터용 -----------------------
	ArrayList<Member> selectStuList(PageInfo pi, int creNum);
	
	ArrayList<Member> selectStuByCo(int courseNum);
	
	//페이징 처리를 위한 학생 수 구하기 
	int getStuCount(int creNum);  
	
}
