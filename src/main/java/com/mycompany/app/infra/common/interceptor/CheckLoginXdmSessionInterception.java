package com.mycompany.app.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginXdmSessionInterception extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		if(request.getSession().getAttribute("sessionId")!=null) {
			
		}else {
			response.sendRedirect("/loginView");
		return false;
		}
		
		return super.preHandle(request, response, handler);
	}
}
