package com.ourcompany.class247.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.member.model.dao.MemberDao;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.review.model.vo.Review;

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
	}
	public Member selectMember(int memNum) {

		return mDao.selectMember(memNum);
	}

	@Override
	public ArrayList<Member> selectMemberList() {

		return mDao.selectMemberList();
	}
	

	@Override
	public int updateMemProfile(Member loginUser) {
		
		return mDao.updateMemProfile(loginUser);
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


	
	// ----------------- 관리자용용 ----------------------
	@Override
	public ArrayList<Member> selectBlackList() {

		return mDao.selectBlackList();
	}
	
	@Override
	public Member selectAMember(int creNum) {
		
		return mDao.selectAMember(creNum);
	}
	
	@Override
	public int allowCreator(int memNum) {
		
		return mDao.allowCreator(memNum);
	}
	
	@Override
	public int updateBlackList(int memNum) {
		
		return mDao.updateBlackList(memNum);
	}
	
	@Override
	public int updateUnBlackList(int memNum) {
		
		return mDao.updateUnBlackList(memNum);
	}

	@Override
	public int insertReview(Review review) {
		return mDao.insertReview(review);
	}
	
	@Override
	public int selectTMem() {
		return mDao.selectTMem();
	}
	
	@Override
	public int selectMMem() {
		return mDao.selectMMem();
	}




}
