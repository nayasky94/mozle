package com.kh.mozle.club.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.club.model.dao.ClubMainDao;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.dao.MemberDao;
import com.kh.mozle.member.model.vo.Member;

@Service
public class ClubMainService {
   
   @Autowired
   ClubMainDao dao;

public List<ClubMain> getClubList(ClubMain cm) {
	// TODO Auto-generated method stub
	
	return dao.selectClubList(cm);
}

public ClubMain getClubDeatil(ClubMain cm) {
	// TODO Auto-generated method stub
	
	return dao.selectClubDetail(cm);
}


public List<ClubMain> getClubDetailList (ClubMain cm) {
	// TODO Auto-generated method stub
	
	return dao.selectClubDetailList(cm);
}

public ClubMain selectCname(ClubMain cm) {
	// TODO Auto-generated method stub

	return dao.selectClubName(cm);
}

public int insertClub(ClubMain cm) {
	// TODO Auto-generated method stub
	return dao.insertClub(cm);
}

public ClubMain selectCnameLeaderId(ClubMain cm) {
	// TODO Auto-generated method stub

	return dao.selectCnameLeaderId(cm);
}

public int updateClub(ClubMain cm) {
	// TODO Auto-generated method stub
	return dao.updateClub(cm);
}

public int insertMemberId(ClubMain cm) {
	// TODO Auto-generated method stub
	return dao.insertMemberId(cm);
}

public int insertMemberIdManage(ClubMain cm) {
	// TODO Auto-generated method stub
	return dao.insertMemberIdManage(cm);
}


public List<ClubMain> selectNewClub() {
	return dao.selectNewClub();
}



/*public Member selectEmailMember(Member member) {
	// TODO Auto-generated method stub
	 return dao.selectEmailMember(member);
	
}*/

}