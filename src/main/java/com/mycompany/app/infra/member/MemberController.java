package com.mycompany.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "xdm/infra/member/memberList";
//		public String codeGroupXdmList(@ModelAttribute("vo") CodeGroupVo vo,Model model) {
		// jsp로 바로 던져주는 것
		
//		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword()); //초기화 세팅에 많이 사용하는 것
//
//		vo.setParamsPaging(service.selectOneCount(vo));
//		
//		if(vo.getTotalRows()>0) {
//			List<CodeGroup> list = service.selectList(vo);
//			model.addAttribute("list",list);
////		model.addAttribute("vo",vo); // jsp로 바로 던져주는 것
//		}	else {
////			by pass
//		}
		
//		return "/xdm/infra/codeGroup/codeGroupXdmList";
	}
	
	
	
	@RequestMapping(value="/memberForm")
	public String memberForm(MemberVo vo, Model model) {
		
		model.addAttribute("item", service.selectOne(vo));
		
		return"xdm/infra/member/memberForm";
	}
	
	@RequestMapping(value="/memberinsert")
	public String memberinsert(MemberVo vo, Model model) {
		
		model.addAttribute("item", service.selectOne(vo));
		
		return"xdm/infra/member/memberinsert";
	}
	
	@RequestMapping(value="/indexUsrSignup")
	public String indexUsrSingup(MemberVo vo,Model model) {
		
	model.addAttribute("item", service.selectOne(vo));
	
		return "usr/infra/index/indexUsrSignup";
	}

	
//	@RequestMapping(value="/codeXdmForm")
//	public String codeXdmForm(CodeGroupVo vo, Model model) {
//		
//		model.addAttribute("item", service.selectOne(vo));
//		
//		return"xdm/infra/index/indexXdmViewInsert";
//	}

	
	@RequestMapping("/memberUpdate")
	
	public String memberUpdate(Member dto) {
		
		System.out.println("memberUpdate");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.update(dto);
		
		
		return "redirect:/memberList";
	}
	@RequestMapping("/memberDelete")
	
	public String memberDelete(Member dto) {
		System.out.println("memberDelete");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.delete(dto);
		
		return "redirect:/memberList";
	}
	
	@RequestMapping("/memberinsertbtn")
	
	public String memberinsert(Member dto) {
		System.out.println("memberinsert");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.insert(dto);
		
		return "redirect:/indexUsrView";
	}
	

		
	@RequestMapping("/memberuelete")
	
	public String memberuelete(Member dto) {
		

		service.uelete(dto);
		
		return "redirect:/memberList";
	}
	
	
	//ajax 사용
	
	  @ResponseBody
	  @RequestMapping("/loginView1") 
	  public Map<String,Object> loginView(MemberVo vo) { 
		       Map<String,Object> returnMap = new HashMap<String,Object>();
		       Member rtMember = service.selectOne(vo);
	  
	  if(rtMember != null) { 
		  returnMap.put("rtMember", rtMember);
		  returnMap.put("rt","success"); 
	  } else {
		  returnMap.put("rt", "fail"); 
	  }  
	  	  return returnMap;
	  	  
  }
	 
	  @ResponseBody
	  @RequestMapping("/indexUsrLogin") 
	  public Map<String,Object> indexUsrLogin(MemberVo vo) { 
		       Map<String,Object> returnMap = new HashMap<String,Object>();
		       Member rtMember = service.selectOne(vo);
	  
	  if(rtMember != null) { 
		  returnMap.put("rtMember", rtMember);
		  returnMap.put("rt","success"); 
	  } else {
		  returnMap.put("rt", "fail"); 
	  }  
	  	  return returnMap;
	  	  
  }

	
	
	
		// redirect 보여줄 화면이 없을 때 사용
	
//	@Controller
//	public class CodeGroupController{
//		
//		@Autowired
//		CodeGroupServiceImpl service;
//		
//		@RequsestMapping("/codeGroupList")
//		public String codeGroupList(Model model) {
//			List<codeGroup>  list = service.selectList();
//			
//			model.addAttribute("list",list);
//			
//			return"codeGroupList;
//		}
//	}
}