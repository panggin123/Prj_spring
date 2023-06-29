package com.mycompany.app.infra.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/indexXdmView")
	public String indexXdmView(CodeGroupVo vo,Model model) {
		
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShKeyword(): " + vo.getShKeyword());
		
		List<CodeGroup> list = service.selectList(vo);
		
		System.out.println("list.size(): " + list.size());
		
		// 왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "/xdm/infra/index/indexXdmView";
	}
	
	
	@RequestMapping(value="/indexXdmViewForm")
	public String indexXdmViewForm(CodeGroupVo vo, Model model) {
		
		model.addAttribute("item", service.selectOne(vo));
		
		return"xdm/infra/index/indexXdmViewForm";
	}
	

	
	@RequestMapping("/codeGroupUpdate")
	
	public String codeGroupUpdate(CodeGroup dto) {
		
		System.out.println("codeGroupUpdate");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.update(dto);
		
		
		return "redirect:/indexXdmView";
	}
	@RequestMapping("/codeGroupDelete")
	
	public String codeGroupDelete(CodeGroup dto) {
		System.out.println("codeGroupDelete");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.delete(dto);
		
		return "redirect:/indexXdmView";
	}
	
	@RequestMapping("/codeGroupinsert")
	
	public String codeGroupinsert(CodeGroup dto) {
		System.out.println("codeGroupinsert");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.insert(dto);
		
		return "redirect:/indexXdmView";
		// redirect 보여줄 화면이 없을 때 사용
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
