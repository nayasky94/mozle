package com.kh.mozle.club.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.mozle.club.model.service.ClubMainService;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.clubNotice.model.service.ClubNoticeService;
import com.kh.mozle.member.model.service.MemberService;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class ClubController {
    @Autowired
    ClubMainService service;
    @Autowired
    ClubNoticeService service2;
    @Autowired
    MemberService service3;
    
    
    @RequestMapping("clubInsert.do")
    public String clubInsert(ClubMain cm, Model model){
       return "club/clubinsert/clubWrite";
    }
    
    
    @RequestMapping("exercise.do")
    public String clubExercise(ClubMain cm, Model model){
    	cm.setC_category("soccer");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/exercise/soccer";
    }
    
    @RequestMapping("baseball.do")
    public String clubBaseball(ClubMain cm, Model model){
    	cm.setC_category("baseball");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/exercise/baseball";
    }
    
    @RequestMapping("basketball.do")
    public String clubBasketball(ClubMain cm, Model model){
    	cm.setC_category("basketball");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/exercise/basketball";
    }
    @RequestMapping("guitar.do")
    public String clubGuitar(ClubMain cm, Model model){
    	cm.setC_category("guitar");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/music/guitar";
    }
    @RequestMapping("piano.do")
    public String clubPiano(ClubMain cm, Model model){
    	cm.setC_category("piano");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/music/piano";
    }
    @RequestMapping("vocal.do")
    public String clubVocal(ClubMain cm, Model model){
    	cm.setC_category("vocal");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/music/vocal";
    }
    
    @RequestMapping("boardgame.do")
    public String clubBoardgame(ClubMain cm, Model model){
    	cm.setC_category("boardgame");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/game/boardgame";
    }
    @RequestMapping("dart.do")
    public String clubDart(ClubMain cm, Model model){
    	cm.setC_category("dart");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/game/dart";
    }
    @RequestMapping("battle.do")
    public String clubBattle(ClubMain cm, Model model){
    	cm.setC_category("battle");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/game/battle";
    }
    @RequestMapping("calli.do")
    public String clubCalli(ClubMain cm, Model model){
    	cm.setC_category("calli");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/handmade/calli";
    }
    
    @RequestMapping("crafts.do")
    public String clubCrafts(ClubMain cm, Model model){
    	cm.setC_category("crafts");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/handmade/crafts";
    }
    
    @RequestMapping("jasu.do")
    public String clubJasu(ClubMain cm, Model model){
    	cm.setC_category("jasu");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/handmade/jasu";
    }
    
    @RequestMapping("cat.do")
    public String clubCat(ClubMain cm, Model model){
    	cm.setC_category("cat");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/pet/cat";
    }
    
    @RequestMapping("dog.do")
    public String clubDog(ClubMain cm, Model model){
    	cm.setC_category("dog");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/pet/dog";
    }
    
    @RequestMapping("fish.do")
    public String clubFish(ClubMain cm, Model model){
    	cm.setC_category("fish");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/pet/fish";
    }
    @RequestMapping("detail.do")
    public String Detail(ClubMain cm, Model model){
    
    
    
    
       return "club/detail/detail";
    }
    @RequestMapping("clubWriteForm.do")
    public String clubWrite(ClubMain cm, Model model){
    
    
    
    
       return "club/clubinsert/clubWrite";
    }
    
    @RequestMapping("selectClubDetailList.do")
    public String cNameDetail(ClubMain cm, Model model,@RequestParam("clubName") String cname){
    System.out.println(cname);
    cm.setC_name(cname);
    ClubMain cm2=service.getClubDeatil(cm);
    System.out.println(cm2);
    model.addAttribute("cm",cm2);
    
    
       return "club/detail/detail";
    }
    
    //아이디 중복값 확인
    @RequestMapping(value="c_nameCheck.do", produces="application/text; charset=utf-8")
    public @ResponseBody String idCheck(String id){
       ClubMain cm = new ClubMain();
       cm.setC_name(id);
       ClubMain cm2=new ClubMain();
       cm2 = service.selectCname(cm);
       return cm2 == null ?"ok":"x";
    }
    
    @RequestMapping(value = "writeClubNotice.do")
	public String writeClub(ClubMain cm, @RequestParam("file") MultipartFile file, @RequestParam("file2") MultipartFile file2,HttpServletRequest request,
			@RequestParam("bigCate") String bigCate) {
		System.out.println(file.getOriginalFilename());
		// 3. 파일 저장 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String path = root + "\\mozle_data\\club_thumnail\\"+bigCate+"\\"+cm.getC_category();
		String filePath = "";
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		filePath = path + "\\" + cm.getC_no()+file.getOriginalFilename();
		try {
			file.transferTo(new File(filePath));
		} catch (Exception e) {
			e.printStackTrace();

		}

		cm.setC_thumbnail("/mozle/resources/mozle_data/club_thumnail/"+bigCate+"/"+cm.getC_category()+"/"+cm.getC_no()+file.getOriginalFilename());
		
		
		String path2 = root + "\\mozle_data\\club_mainimage\\"+bigCate+"\\"+cm.getC_category();
		String filePath2 = "";
		File folder2 = new File(path2);
		if (!folder2.exists()) {
			folder2.mkdirs();
		}

		filePath2 = path2 + "\\" + cm.getC_no()+file2.getOriginalFilename();
		try {
			file2.transferTo(new File(filePath2));
		} catch (Exception e) {
			e.printStackTrace();

		}

		cm.setC_picture("/mozle/resources/mozle_data/club_mainimage/"+bigCate+"/"+cm.getC_category()+"/"+cm.getC_no()+file2.getOriginalFilename());
		
		
		
		int result = service.insertClub(cm);
		if(result>0){
			System.out.println("잘들어감");
			System.out.println(cm);
			
		}
		else
			System.out.println("잘못들어감");
		
		// int result=noticeService.insertNotice(notice);
		   if(cm.getC_category().equals("soccer")){
		         return "redirect:exercise.do";
		      }
		      return "redirect:"+cm.getC_category()+".do";
	}
    
    
    @RequestMapping("clubUpdateForm.do")
    public String clubUpdate(ClubMain cm, Model model){
    	cm=service.selectCname(cm);
    
    
    	model.addAttribute("cm",cm);
       return "club/clubinsert/clubUpdate";
    }
    
    
    
    @RequestMapping(value = "updateClubMain.do")
	public String updateClub(ClubMain cm, @RequestParam("file") MultipartFile file, @RequestParam("file2") MultipartFile file2,HttpServletRequest request,
			@RequestParam("bigCate") String bigCate) {
    	ClubMain cm2=service.selectCname(cm);
    	
		System.out.println(file.getOriginalFilename());
		
		
		// 3. 파일 저장 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String path = root + "\\mozle_data\\club_thumnail\\"+bigCate+"\\"+cm.getC_category();
		String filePath = "";
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
			
		}

		filePath = path + "\\" +cm.getC_no()+ file.getOriginalFilename();
		try {
			File oldFile=new File(cm2.getC_thumbnail());
			oldFile.delete();
			file.transferTo(new File(filePath));
			
		} catch (Exception e) {
			e.printStackTrace();

		}

		cm.setC_thumbnail("/mozle/resources/mozle_data/club_thumnail/"+bigCate+"/"+cm.getC_category()+"/"+cm.getC_no()+file.getOriginalFilename());
		
		
		String path2 = root + "\\mozle_data\\club_mainimage\\"+bigCate+"\\"+cm.getC_category();
		String filePath2 = "";
		File folder2 = new File(path2);
		if (!folder2.exists()) {
			folder2.mkdirs();
		}

		filePath2 = path2 + "\\" +cm.getC_no()+ file2.getOriginalFilename();
		try {
			File oldFile=new File(cm2.getC_picture());
			oldFile.delete();
			file2.transferTo(new File(filePath2));
		} catch (Exception e) {
			e.printStackTrace();

		}

		cm.setC_picture("/mozle/resources/mozle_data/club_mainimage/"+bigCate+"/"+cm.getC_category()+"/"+cm.getC_no()+file2.getOriginalFilename());
		
		
		
		int result = service.updateClub(cm);
		if(result>0){
			System.out.println("잘들어감");
			System.out.println(cm);
			
		}
		else
			System.out.println("잘못들어감");
		
		// int result=noticeService.insertNotice(notice);
		   if(cm.getC_category().equals("soccer")){
		         return "redirect:exercise.do";
		      }
		      return "redirect:"+cm.getC_category()+".do";
	}
    
/*    @RequestMapping(value="login.do", method =RequestMethod.POST)
      public String login(Member member, HttpSession session){
         
         Member user = service.selectMember(member);
         
         System.out.println(user);
         if(user!= null && user.getPassword().equals(member.getPassword())){
            session.setAttribute("user", user);
         }else{
            System.out.println("로그인 실패");
         }
         return "index";
      }*/
    
        @RequestMapping("insertMemberClub.do")
        public String insertMemberClub(ClubMain cm, @RequestParam("user") String user,Model model,Member member){
        cm=service.selectCname(cm);
        member.setM_id(user);
        member=service3.selectMember(member);
        String memberIdList=cm.getC_member_id_ready();
        System.out.println("멤버리스트"+memberIdList);
        	
        memberIdList=memberIdList+","+member.getM_id();
        System.out.println("멤버리스트"+memberIdList);
        cm.setC_member_id_ready(memberIdList);
        int result=service.insertMemberId(cm);
        if(result>0)
        	System.out.println("잘들어감");
        		
        else{
        	System.out.println("잘못들어감");
        }
        
 
        
        
        
           return "redirect:selectClubDetailList.do?clubName="+cm.getC_name();
        }
        
        
        @RequestMapping("clubMemberController.do")
        public String clubMemberController(ClubMain cm,Model model,Member member){
        	cm=service.selectCname(cm);
        	List<Member> list = service3.selectMemberManageList(cm);
        	
        	System.out.println(list);
        	model.addAttribute("cm",cm);
        	model.addAttribute("list",list);
        	
        	
           return "club/clubinsert/clubMemberManage";
        }
        @RequestMapping("clubMemberControllerInsert.do")
        public String clubMemberControllerInsert(ClubMain cm,Model model,Member member){
        	cm=service.selectCname(cm);
        	
        	
        	
        	List<Member> list = service3.selectMemberManageList(cm);
        	String str=cm.getC_leader_id();
        	for(Member m:list ){
        		if(m.getM_id().equals(member.getM_id())){
        			if(m.getM_cname()==null){
        				m.setM_cname(cm.getC_name());
        				service3.updateMemberCname(m);
        			}
        			else{
        				m.setM_cname(m.getM_cname()+","+cm.getC_name());
        				service3.updateMemberCname(m);
        			}
        		}else{
        			str=str+","+m.getM_id();
        		}
        			
        	}
        	cm.setC_member_id_ready(str);
        	cm.setC_member_id(str+member.getM_id());
        	int result=service.insertMemberIdManage(cm);
        	list = service3.selectMemberManageList(cm);
        	List<Member> list2 = service3.selectMemberManageListMember(cm);
        	
        	
        	
        	model.addAttribute("cm",cm);
        	model.addAttribute("list",list);
        	model.addAttribute("list2",list2);
        	
        	
        	
           return "club/clubinsert/clubMemberManage";
        }
        
        @RequestMapping("clubMemberControllerDelete.do")
        public String clubMemberControllerDelete(ClubMain cm,Model model,Member member){
        	cm=service.selectCname(cm);
        	
        	
        	List<Member> list2 = service3.selectMemberManageListMember(cm);
        	String str=cm.getC_leader_id();
        	for(Member m:list2 ){
        		if(m.getM_id().equals(member.getM_id())){
        			
        		}else{
        			str=str+","+m.getM_id();
        		}
        			
        	}
        	cm.setC_member_id(str);
        	int result=service.insertMemberIdManage(cm);
        	
        	list2 = service3.selectMemberManageListMember(cm);
        	List<Member> list = service3.selectMemberManageList(cm);
        	model.addAttribute("cm",cm);
        	model.addAttribute("list",list);
        	model.addAttribute("list2",list2);
        	
        	
        	
           return "club/clubinsert/clubMemberManage";
        }
        
        
}