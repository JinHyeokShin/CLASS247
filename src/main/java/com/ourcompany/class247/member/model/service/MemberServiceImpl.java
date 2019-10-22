package com.ourcompany.class247.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.member.model.dao.MemberDao;
import com.ourcompany.class247.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(m);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);
	}

	@Override
	public Member selectMember(int memNum) {

		return mDao.selectMember(memNum);
	}

	@Override
	public ArrayList<Member> selectMemberList() {

		return mDao.selectMemberList();
	}

	
	
	
	
	// ------	------------ 크리에이터용 ----------------------
	/**
	 * 학생리스트 불러오기(크리에이터 별)
	 */
	@Override
	public ArrayList<Member> selectStuList(PageInfo pi, int creNum) {
		return mDao.selectStuList(pi, creNum);
	}

	/**
	 * 강의별 수강 학생리스트 불러오기 
	 */
	@Override
	public ArrayList<Member> selectStuByCo(int courseNum) {
		return mDao.selectStuByCo(courseNum);
	}
	
	
	
	/** 페이징 처리를 위한 학생 수 구하기 
	 *
	 */
	@Override
	public int getStuCount(int creNum) {
		return mDao.getStuCount(creNum);
	}

}
