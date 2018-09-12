package com.kh.mozle.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.notice.model.dao.NoticeDao;
import com.kh.mozle.notice.model.vo.Notice;
import com.kh.mozle.notice.model.vo.Pagination;

@Service
public class NoticeService {
		
	@Autowired
	private NoticeDao dao;
	public List<Notice> selectNoticeList() {
		return dao.selectNoticeList();
	}
	public Notice selectNotice(int no) {
		return dao.selectNotice(no);
	}
	public int noticeCount(int no) {
		return dao.noticeCount(no);
	}
	public int writeNotice(Notice notice) {
		return dao.writeNotice(notice);
	}
	public int updateNotice(Notice notice) {
		return dao.updateNotice(notice);
	}
	public int deleteNotice(int no) {
		return dao.deleteNotice(no);
	}
	public int noticeTotalCount() {
		return dao.noticeTotalCount();
	}
	public List<Notice> noticePaging(int no) {
		return dao.noticePaging(no);
	}

}
