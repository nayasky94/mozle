package com.kh.mozle.clubNotice.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.clubNotice.model.vo.ClubNotice;
import com.kh.mozle.notice.model.vo.Notice;
import com.kh.mozle.notice.model.vo.Pagination;

@Repository
public class ClubNoticeDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public List<Notice> selectNoticeList() {
		return session.selectList("ClubnoticeMapper.selectNoticeList");
	}

	public ClubNotice selectNotice(int no) {
		return session.selectOne("ClubnoticeMapper.selectNotice", no);
	}

	public int noticeCount(int no) {
		return session.update("ClubnoticeMapper.noticeCount", no);
	}

	public int writeNotice(Notice notice) {
		return session.insert("ClubnoticeMapper.insertNotice", notice);
	}

	public int updateClubNotice(ClubNotice notice) {
		return session.update("ClubnoticeMapper.updateNotice", notice);
	}

	public int deleteNotice(int no) {
		return session.delete("ClubnoticeMapper.deleteNotice", no);
	}

	public int noticeTotalCount(ClubNotice cn) {
		return session.selectOne("ClubnoticeMapper.noticeTotalCount",cn);
	}

	public List<ClubNotice> noticePaging(ClubNotice cn) {
		return session.selectList("ClubnoticeMapper.noticePaging", cn);
	}

	public int ClubwriteNotice(ClubNotice notice) {
		// TODO Auto-generated method stub
		return session.insert("ClubnoticeMapper.insertClubNotice", notice);
	}

}
