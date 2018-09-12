package com.kh.mozle.notice.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.notice.model.vo.Notice;
import com.kh.mozle.notice.model.vo.Pagination;

@Repository
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public List<Notice> selectNoticeList() {
		return session.selectList("noticeMapper.selectNoticeList");
	}

	public Notice selectNotice(int no) {
		return session.selectOne("noticeMapper.selectNotice", no);
	}

	public int noticeCount(int no) {
		return session.update("noticeMapper.noticeCount", no);
	}

	public int writeNotice(Notice notice) {
		return session.insert("noticeMapper.insertNotice", notice);
	}

	public int updateNotice(Notice notice) {
		return session.update("noticeMapper.updateNotice", notice);
	}

	public int deleteNotice(int no) {
		return session.delete("noticeMapper.deleteNotice", no);
	}

	public int noticeTotalCount() {
		return session.selectOne("noticeMapper.noticeTotalCount");
	}

	public List<Notice> noticePaging(int no) {
		return session.selectList("noticeMapper.noticePaging", no);
	}

}
