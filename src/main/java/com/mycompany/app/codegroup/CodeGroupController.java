package com.mycompany.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo,Model model) {
		
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShKeyword(): " + vo.getShKeyword());
		
		List<CodeGroup> list = service.selectList(vo);
		
		System.out.println("list.size(): " + list.size());
		
		// 왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "codeGroupList";
	}
	
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
	
	CodeGroup codeGroup = service.selectOne(vo);
	
	model.addAttribute("item", codeGroup);
	
	return "codeGroupForm";
}
	
	
	@RequestMapping("/codeGroupUpdate")
	
	public String codeGroupUpdate(CodeGroup dto) {
		
		System.out.println("codeGroupUpdate");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.update(dto);
		
		
		return "redirect:/codeGroupList";
	}
	@RequestMapping("/codeGroupDelete")
	
	public String codeGroupDelete(CodeGroup dto) {
		System.out.println("codeGroupDelete");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.update(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupinsert")
	
	public String codeGroupinsert(CodeGroup dto) {
		System.out.println("codeGroupinsert");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.insert(dto);
		
		return "redirect:/codeGroupList";
	}
	
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
