package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value= "/")
	public String home() {
	// 여기에서 서버단에서 필요한 작업을 수행한다.	
		
	// href="/resources/xdm/v1/css/commonXdm.css"
	
		
	// 아래의 jsp 파일 호출	
		return "home";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		return "app/home/login";
	}

	@RequestMapping(value="/index_admin")
	public String admin() {
		return "app/home/admin";
	}
	
	
//	@RequestMapping(value= "/home2")
//	public String home2() {
//		return "app/home/home2";
//	}
//	
//	@RequestMapping(value="/home3")
//	public String home3() {
//		return "app/home/home3";
//	}
//		
//	@RequestMapping(value="/home4")
//	public String home4() {
//		return "app/home/home4";
//	}
//	
//	@RequestMapping(value="/home5")
//	public String home5() {
//		return "app/home/home5";
//	}
//	
//	@RequestMapping(value="/home6")
//	public String home6() {
//		return "app/home/home6";
//	}
	
}
