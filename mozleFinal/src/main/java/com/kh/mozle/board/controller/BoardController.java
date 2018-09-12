package com.kh.mozle.board.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mozle.board.model.service.BoardService;
import com.kh.mozle.board.model.vo.Board;
import com.kh.mozle.board.model.vo.BoardReply;
import com.kh.mozle.club.controller.ClubController;
import com.kh.mozle.club.model.service.ClubMainService;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.notice.model.vo.Pagination;

@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	@Autowired
	BoardReplyController replyCon;
	
	@Autowired
	ClubMainService service2;
	
	//게시글 전체 내용 정보 리스트 + 페이징 처리
	@RequestMapping("freeBoardList.do")
	public ModelAndView boardList(ModelAndView mv, Pagination page, @RequestParam(defaultValue="1") int no){
		int boardCount = service.boardTotalCount();
		int rangeSize = page.getRangeSize();
		int pageSize = page.getPageSize();
		page.setCurPage(no); //현재 페이지 번호
		page.setListCnt(boardCount);//전체 게시물 수
		
		//전체 페이지 수
		int pageCnt = boardCount / pageSize;
		if(boardCount % pageSize > 0){
			pageCnt = boardCount / pageSize + 1;
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
		
		List<Board> list = service.boardList(no);
		
		mv.addObject("board", list);
		mv.addObject("boardCount", boardCount);
		mv.addObject("page", page);
		mv.setViewName("board/freeBoardList");
		
		return mv;
	}
	
	
	//게시글 상세 내용 + 게시글에 대한 댓글
	@RequestMapping("boardDetail.do")
	public ModelAndView boardDetail(ModelAndView mv, int no){
		
		//해당 게시글에 대한 댓글 정보 리스트
		List<BoardReply> reply = replyCon.replyList(no);

		//해당 게시글에 진입했을때 조회수 + 1
		int count = service.boardCount(no);
		
		//해당 게시글에 대한 상세 내용
		Board board = service.selectBoard(no);
		mv.addObject("board", board);
		mv.addObject("reply", reply);
		System.out.println("상세 내용 board : " + board);
		System.out.println("reply : " + reply);
		mv.setViewName("board/freeBoardDetail");
		return mv;
	}

	
	//게시글 상세 내용 + 게시글에 대한 댓글
		@RequestMapping("boardDetail1.do")
		public ModelAndView boardDetail1(ModelAndView mv, int no){
			System.out.println("게시글 등록+삭제 후 디테일1.do의 파라미터 no : " + no);
			//해당 게시글에 대한 댓글 정보 리스트
			List<BoardReply> reply = replyCon.replyList(no);
			//해당 게시글에 대한 상세 내용
			Board board = service.selectBoard(no);
			mv.addObject("board", board);
			mv.addObject("reply", reply);
			
			mv.setViewName("board/freeBoardDetail");
			return mv;
		}
	
	//게시글 쓰기폼으로 이동
	@RequestMapping("writeBoardForm.do")
	public String writeBoardForm(){
		return "board/writeBoardForm";
	}
	
	
	@RequestMapping("writeBoard.do")
	public String wirteBoard(Board board){
		int result = service.writeBoard(board);
		return "redirect:freeBoardList.do";
	}
	
	@RequestMapping("updateBoardForm.do")
	public ModelAndView updateBoardForm(ModelAndView mv, int no){
		Board board = service.updateBoardForm(no);
		mv.addObject("board", board);
		mv.setViewName("board/updateBoardForm");
		return mv;
	}
	
	@RequestMapping("updateBoard.do")
	public String updateBoard(Board board){
		int result = service.updateBoard(board);
		return "redirect:freeBoardList.do";
	}
	
	
	//게시글 삭제 할때 + 댓글먼저 모두 삭제
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(int no){
		//해당 게시글의 댓글 모두 삭제
		//1. 게시글의 글번호를  파라미터로 댓글이 있는지 확인함 count 써서 개수 체크
		int resultDelAll=0;
		int resultCount = replyCon.replyCount(no);
		System.out.println("게시글의 글번호 : " + no + ", 해당 게시글에 달린 댓글의 수 : " + resultCount);
		if(resultCount>0){
			//댓글 전부 삭제
			resultDelAll = replyCon.deleteAllReply(no);
			System.out.println("댓글 전체 삭제 결과 : " + resultDelAll);
		}else{
			System.out.println("게시글에 댓글이 없습니다.");
		}
		//2. count가 0>모두 지움 <1면 처리 x
		
		//게시글 삭제
		int result = service.deleteBoard(no);
		return "redirect:freeBoardList.do";
	}
	
	
		
		@RequestMapping("ClubBoardList.do")
	
		public ModelAndView clubBoardList(ClubMain cm,ModelAndView mv, Pagination page, @RequestParam(defaultValue="1") int no){
			
		List<Board> list = service.boardListCname(cm);
		System.out.println(cm.getC_name());
		System.out.println("자유게시판 별"+list);
		mv.addObject("board", list);
		mv.addObject("page", page);
		mv.addObject("cm",cm);
		mv.setViewName("clubBoard/clubBoardList");
		
		return mv;
	}
		
		@RequestMapping("clubBoardDetail.do")
		public ModelAndView clubBoardDetail(ClubMain cm,ModelAndView mv, int no){
			
			//해당 게시글에 대한 댓글 정보 리스트
			List<BoardReply> reply = replyCon.replyList(no);

			//해당 게시글에 진입했을때 조회수 + 1
			int count = service.boardCount(no);
			
			//해당 게시글에 대한 상세 내용
			Board board = service.selectBoard(no);
			cm=service2.selectCname(cm);
			mv.addObject("board", board);
			mv.addObject("reply", reply);
			mv.addObject("cm",cm);
			System.out.println("상세 내용 board : " + board);
			System.out.println("reply : " + reply);
			mv.setViewName("clubBoard/clubBoardDetail");
			return mv;
		}
		
		
		@RequestMapping("writeClubBoardForm.do")
		public String writeClubBoardForm(ClubMain cm,Model model){
			model.addAttribute("cm",cm);
			cm=service2.selectCname(cm);
			return "clubBoard/writeClubBoardForm";
		}
		@RequestMapping("writeClubBoard.do")
		public String wirteClubBoard(Board board){
			int result = service.writeClubBoard(board);
			return "redirect:ClubBoardList.do?c_name="+board.getB_clubname();
		}
		
		//게시글 상세 내용 + 게시글에 대한 댓글
				@RequestMapping("ClubboardDetail1.do")
				public String ClubboardDetail1(Model mv, int no,ClubMain cm){
					System.out.println("게시글 등록+삭제 후 디테일1.do의 파라미터 no : " + no);
					//해당 게시글에 대한 댓글 정보 리스트
					List<BoardReply> reply = replyCon.replyList(no);
					//해당 게시글에 대한 상세 내용
					Board board = service.selectBoard(no);
					mv.addAttribute("board", board);
					mv.addAttribute("reply", reply);
					mv.addAttribute("cm",cm);
					
					return "redirect:clubBoardDetail.do?c_name="+cm.getC_name()+"&no="+no;
				}
			//보람 추가
				 @RequestMapping(value="deleteBoards.do", method=RequestMethod.GET)
				 public String deleteBoards(@RequestParam String bno){
					 String[] array = bno.split("/");
					 
					 for(int i=0;i<array.length;i++){
						 System.out.println(array[i]);
						 
						 int resultDelAll=0;
							int resultCount = replyCon.replyCount(Integer.parseInt(array[i]));
							System.out.println("게시글의 글번호 : " + Integer.parseInt(array[i]) + ", 해당 게시글에 달린 댓글의 수 : " + resultCount);
							if(resultCount>0){
								//댓글 전부 삭제
								resultDelAll = replyCon.deleteAllReply(Integer.parseInt(array[i]));
								System.out.println("댓글 전체 삭제 결과 : " + resultDelAll);
							}else{
								System.out.println("게시글에 댓글이 없습니다.");
							}
							//2. count가 0>모두 지움 <1면 처리 x
							
							//게시글 삭제
							int result = service.deleteBoard(Integer.parseInt(array[i]));
					 }
					 return "redirect:myPost.do";
				 }
				 
				 @RequestMapping("updateClubBoardForm.do")
		            public ModelAndView updateClubBoardForm(ModelAndView mv, int no){
		               Board board = service.updateBoardForm(no);
		               mv.addObject("board", board);
		               mv.setViewName("clubBoard/updateClubBoardForm");
		               return mv;
		            }
		            @RequestMapping("updateClubBoard.do")
		            public String updateClubBoard(Board board){
		               int result = service.updateBoard(board);
		               return "redirect:ClubBoardList.do?c_name="+board.getB_clubname();
		            }
	
}
