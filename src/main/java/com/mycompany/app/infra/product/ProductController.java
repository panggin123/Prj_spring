package com.mycompany.app.infra.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@Autowired
	ProductServiceImpl service;
//	private Object rtMember;
	
	@RequestMapping("/productList")
	public String productList(@ModelAttribute("vo") ProductVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Product> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "xdm/infra/product/productList";
	}
	
	@RequestMapping("/indexUsrShop")
	public String indexUsrShop(@ModelAttribute("vo") ProductVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Product> list = service.selectList(vo);
			List<Product> listUploaded = service.listUploaded(vo);
			model.addAttribute("list", list);
			model.addAttribute("listUploade", listUploaded);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "usr/infra/index/indexUsrShop";
	}
	
	@RequestMapping("/indexUsrShopDetail")
	public String indexUsrShopDetail(@ModelAttribute("vo") ProductVo vo, Model model) {		
		
		System.out.println("indexUsrShopDetail - vo.getSeq(): " + vo.getSeq());
		
		Product product = service.selectBySeq(vo);
		
		model.addAttribute("product",product);
		
		System.out.println("product.toString()"+ product.toString());
		return "usr/infra/index/indexUsrShopDetail";
	}
	
	
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

	
	
	
	@RequestMapping(value="/productForm")
	public String productForm(ProductVo vo, Model model) {
		
		model.addAttribute("item", service.selectOne(vo));
		model.addAttribute("listUploaded", service.selectUploaded(vo));
		
		return"xdm/infra/product/productForm";
	}
	
	@RequestMapping(value = "/productinsert")
	public String productinsert(ProductVo vo, Model model) {
		
		model.addAttribute("item", service.selectOne(vo));
		model.addAttribute("listUploaded", service.selectUploaded(vo));

		return "xdm/infra/product/productinsert";
	}
	
	
	
	@RequestMapping("/productUpdate")
	
	public String productUpdate(Product dto) throws Exception {
		
		System.out.println("productUpdate");
		
		System.out.println("dto.getProductName(): " + dto.getProductName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.update(dto);
		
		
		return "redirect:/productList";
	}

	@RequestMapping("/productDelete")
	public String productDelete(Product dto) {
		System.out.println("productDelete");
		
		System.out.println("dto.getProductName(): " + dto.getProductName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.delete(dto);
		
		return "redirect:/productList";
	}
	
	@RequestMapping("/productinsertbtn")
	public String productinsertbtn(Product dto) throws Exception {
		System.out.println("productinsertbtn");
		
		System.out.println("dto.getProductName(): " + dto.getProductName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.insert(dto);
		
		return "redirect:/productList";
	}
	

		
	@RequestMapping("/productuelete")
	public String productuelete(Product dto) {

		service.uelete(dto);
		
		return "redirect:/productList";
	}
	
	
//	usr
	
	@RequestMapping("/productUsrList")
	public String productUsrList(Product dto) {
		
		
		return "usr/infra/product/productUsrList";
	}
	
	@RequestMapping(value="/indexUsrCart")
	public String indexUsrCart(@ModelAttribute("vo") ProductVo vo, Model model) {
		
		Product product = service.selectCartSeq(vo);
		
		model.addAttribute("product",product);
		
		return "/usr/infra/index/indexUsrCart";
	}
	
	
//	
//	//ajax 사용
//	
//	  @ResponseBody
//	  @RequestMapping("/loginView1") 
//	  public Map<String,Object> loginView(ProductVo vo) { 
//		       Map<String,Object> returnMap = new HashMap<String,Object>();
//		       Product rtMember = service.selectOne(vo);
//	  
//	  if(rtMember != null) { 
//		  returnMap.put("rtMember", rtMember);
//		  returnMap.put("rt","success"); 
//	  } else {
//		  returnMap.put("rt", "fail"); 
//	  }  
//	  	  return returnMap;
//  }
//
//	
//
//	 // 로그인
//	  @ResponseBody
//	  @RequestMapping("/loginProc")
//	  public Map<String, Object> loginProc(ProductVo vo, HttpSession httpSession){
//		  Map<String, Object> returnMap = new HashMap<String, Object>();
//
//		  Product rtMember = service.selectOne(vo);
//
//		  if(rtMember != null){
//
//		  	httpSession.setMaxInactiveInterval(60*60);
//		  	httpSession.setAttribute("sessionId", vo.getId());
//		  	
//		  	returnMap.put("rtMember", rtMember);
//		  	returnMap.put("rt", "success");
//		  	 System.out.println(httpSession.getAttribute("sessionId"));
//		  }else {
//			  returnMap.put("rt","fail");
//		  }
//		  return returnMap;
//	  }
//		  @ResponseBody
//		  @RequestMapping("/logoutProc")
//		  public Map<String, Object> logoutProc(HttpSession httpSession){
//			  Map<String, Object> returnMap = new HashMap<String, Object>();
//
//				System.out.println(httpSession.getAttribute("sessionId"));
//				httpSession.invalidate();
//				returnMap.put("rt", "success");
//			  return returnMap;
//		  }
//	
//		  @ResponseBody
//		  @RequestMapping("/checkid")
//		  public Map<String, Object> checkid(HttpSession httpSession, ProductVo vo){
//			  Map<String, Object> returnMap = new HashMap<String, Object>();
//			  int rtMember = service.selectOneCount(vo);
//				System.out.println(httpSession.getAttribute("sessionId"));
//				httpSession.invalidate();
//				if(rtMember != 0){
//				  	
//				  	returnMap.put("rtMember", rtMember);
//				  	returnMap.put("rt","fail");
//				  }else {
//					  returnMap.put("rt", "success");
//				  }
//			  return returnMap;
//		  }
//		// redirect 보여줄 화면이 없을 때 사용
////	@Controller
////	public class CodeGroupController{
////		
////		@Autowired
////		CodeGroupServiceImpl service;
////		
////		@RequsestMapping("/codeGroupList")
////		public String codeGroupList(Model model) {
////			List<codeGroup>  list = service.selectList();
////			
////			model.addAttribute("list",list);
////			
////			return"codeGroupList;
////		}
////	}
	
	
	
}