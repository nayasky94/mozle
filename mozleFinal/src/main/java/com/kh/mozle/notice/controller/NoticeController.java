package com.kh.mozle.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mozle.notice.model.service.NoticeService;
import com.kh.mozle.notice.model.vo.Notice;
import com.kh.mozle.notice.model.vo.Pagination;

@Controller
public class NoticeController {
	//공지사항 조회
	//공지사항 등록
	//공지사항 수정
	//공지사항 삭제
	
	@Autowired
	private NoticeService service;
	
	@RequestMapping("noticeList.do")
	public ModelAndView noticePaging(ModelAndView mv, Pagination page, @RequestParam(defaultValue="1") int no){
		int noticeCount = service.noticeTotalCount();
		int rangeSize = page.getRangeSize();
		int pageSize = page.getPageSize();
		page.setCurPage(no); //현재 페이지 번호
		page.setListCnt(noticeCount);//전체 게시물 수
		
		//전체 페이지 수
		int pageCnt = noticeCount / pageSize;
		if(noticeCount % pageSize > 0){
			pageCnt = noticeCount / pageSize + 1;
		}
		page.setPageCnt(pageCnt);
		
		//전체 블럭 개수 rangeCnt = (전체 페이지 수 / 한 블럭 페이지 수 5)
		int rangeCnt = pageCnt / rangeSize;
		if(pageCnt % rangeSize > 0 ){
			rangeCnt = (pageCnt / rangeSize)+1;
		}
		page.setRangeCnt(rangeCnt);
		
		//현재 블럭 번호
		int curRange = (int)((no-1)/rangeSize) + 1;
		page.setCurRange(curRange);
		
		//블록 내 시작 페이지
		int startPage = (curRange - 1) * rangeSize + 1;
		page.setStartPage(startPage); 
		
		//블록 내 끝 페이지
		page.setEndPage(page.getStartPage() + rangeSize - 1); 
		
		//이전 페이지
		int prev = page.getCurPage()-rangeSize;
		if(prev < 1){
			prev = 1;
		}
		page.setPrevPage(prev);
		
		//다음 페이지
		int next = page.getCurPage() + rangeSize;
		if(next > pageCnt){
			next = pageCnt;
		}
		page.setNextPage(next);
		
		//블록 내 끝 페이지가 전체 페이지 수 보다 많을 경우 처리
		if(page.getEndPage() > page.getPageCnt()){
			page.setEndPage(page.getPageCnt());
		}
		List<Notice> list = service.noticePaging(no);
		System.out.println(list.toString());

		mv.addObject("notice", list);
		mv.addObject("page", page);
		mv.addObject("noticeTotalCount", noticeCount);
		mv.setViewName("board/noticeList");
		
		System.out.println(page);
		return mv;
	}
	
	//공지사항 상세 페이지
	@RequestMapping("noticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, int no){
		//공지 게시물 클릭시 조회수 증가
		int count = service.noticeCount(no);
		Notice notice = service.selectNotice(no);
		mv.addObject("notice", notice);
		mv.setViewName("board/noticeDetail");
		return mv;
	}
	
	//공지사항 작성 페이지로 이동
	@RequestMapping("writeNoticeForm.do")
	public String writeNoticeForm(){
		return "board/writeNoticeForm";	
	}
	
	
	//공지사항 삽입(작성) 페이지
	@RequestMapping("writeNotice.do")
	public String writeNotice(Notice notice, HttpServletRequest request, HttpServletResponse response) throws Exception{
		notice.setN_writer("관리자");
		System.out.println(notice);
		int result = service.writeNotice(notice);
		return "redirect:noticeList.do"; 
	}
	
	
	//공지사항 수정폼 페이지 -> updateNoticeform.jsp로 이동
	@RequestMapping("updateNoticeForm.do")
	public ModelAndView updateNoticeForm(ModelAndView mv, int no){
		//1.상세페이지에서 수정버튼 누르면 - DB에 있는 해당 공지사항의 번호를 조회, 정보를 갖고 공지사항 수정폼으로 이동
		//2.가져온 정보를 공지사항 작성폼으로 이동해서 화면에 출력
		Notice result = service.selectNotice(no);
		mv.addObject("notice", result);
		mv.setViewName("board/updateNoticeForm");
		return mv;
	}
	
	
	//공지사항 수정 페이지 -> 작성된 결과를 확인하기위해 noticeList.do로 이동 redirect
	@RequestMapping("updateNotice.do")
	public String noticeUpdate(Notice notice){
		//1.내용 수정 후 확인 버튼 누르면 - 현재 공지사항의 번호로 DB의 정보를 수정
		System.out.println("update문"+notice);
		int result = service.updateNotice(notice);
		
		return "redirect:noticeList.do";
	}
	
	
	
	//공지사항 삭제 페이지 -> 상세페이지에서 삭제누르면 삭제처리와 함께 noticeList.do로 이동 redirect
	@RequestMapping("deleteNotice.do")
	public String deleteNotice(int no){
		System.out.println(no);
		int result = service.deleteNotice(no);
		return "redirect:noticeList.do";
	}
	
	
}
