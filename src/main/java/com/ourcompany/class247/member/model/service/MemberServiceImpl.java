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
	public int updateMember(Member m) {
		
		return mDao.updateMember(m);
	}

	@Override
	public int deleteMember(Member m) {

		return mDao.deleteMember(m);
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

}
