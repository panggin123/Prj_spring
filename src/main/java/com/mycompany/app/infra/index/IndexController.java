package com.mycompany.app.infra.index;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {


	@RequestMapping(value="/biographyUsrView")
	public String biographyUsrView() {
		return "/usr/infra/biography/biographyUsrView";
	}

//	@RequestMapping(value="/indexUsrShop")
//	public String indexShop() {
//		return "/usr/infra/index/indexUsrShop";
//	}

	@RequestMapping(value="/indexUsrCart")
	public String indexCart() {
		return "/usr/infra/index/indexUsrCart";
	}

	
	
	  @RequestMapping(value="/loginView") 
  		public String loginView() {
		  return"/usr/infra/biography/loginView";
	  }
	 
	 
	@RequestMapping(value="/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
	
	 @RequestMapping(value="/indexUsrLogin") 
		public String indexUsrLogin() {
		  return"/usr/infra/index/indexUsrLogin";
	  }

	 


//@RequestMapping(value= "/")
//public String home() {
//// 여기에서 서버단에서 필요한 작업을 수행한다.	
//	
//// href="/resources/xdm/v1/css/commonXdm.css"
//
//	
//// 아래의 jsp 파일 호출	
//	return "home";
//}




//		@RequestMapping(value= "/home2")
//		public String home2() {
//			return "app/home/home2";
//		}
//	
//		@RequestMapping(value="/home3")
//		public String home3() {
//			return "app/home/home3";
//		}
//			
//		@RequestMapping(value="/home4")
//		public String home4() {
//			return "app/home/home4";
//		}
//	
//		@RequestMapping(value="/home5")
//		public String home5() {
//			return "app/home/home5";
//		}
//	
//		@RequestMapping(value="/home6")
//		public String home6() {
//			return "app/home/home6";
//		}
	
}

