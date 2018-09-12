package com.kh.mozle.clubNotice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.clubNotice.model.dao.ClubNoticeDao;
import com.kh.mozle.clubNotice.model.vo.ClubNotice;
import com.kh.mozle.notice.model.dao.NoticeDao;
import com.kh.mozle.notice.model.vo.Notice;
import com.kh.mozle.notice.model.vo.Pagination;

@Service
public class ClubNoticeService {
		
	@Autowired
	private ClubNoticeDao dao;
	public List<Notice> selectNoticeList() {
		return dao.selectNoticeList();
	}
	public ClubNotice selectNotice(int no) {
		return dao.selectNotice(no);
	}
	public int noticeCount(int no) {
		return dao.noticeCount(no);
	}
	public int writeNotice(Notice notice) {
		return dao.writeNotice(notice);
	}
	public int updateClubNotice(ClubNotice notice) {
		return dao.updateClubNotice(notice);
	}
	public int deleteNotice(int no) {
		return dao.deleteNotice(no);
	}
	public int noticeTotalCount(ClubNotice cn) {
		return dao.noticeTotalCount(cn);
	}
	public List<ClubNotice> noticePaging(ClubNotice cn) {
		return dao.noticePaging(cn);
	}
	public int ClubwriteNotice(ClubNotice notice) {
		// TODO Auto-generated method stub
		return dao.ClubwriteNotice(notice);
	}

}
