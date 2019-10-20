package com.ourcompany.class247.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	@Override
	public ArrayList<Member> selectStuList(int creNum) {
		return mDao.selectStuList(creNum);
	}

	@Override
	public ArrayList<Member> selectStuByCo(int courseNum) {
		return mDao.selectStuByCo(courseNum);
	}


	
	// ----------------- 관리자용용 ----------------------
	@Override
	public ArrayList<Member> selectBlackList() {

		return mDao.selectBlackList();
	}
	

}
