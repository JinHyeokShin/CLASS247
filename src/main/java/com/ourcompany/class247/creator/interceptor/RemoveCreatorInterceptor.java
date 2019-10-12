package com.ourcompany.class247.creator.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ourcompany.class247.creator.model.vo.Creator;

public class RemoveCreatorInterceptor extends HandlerInterceptorAdapter{
	
	
	
	
	/**
	 * 크리에이터 센터에서 홈으로 돌아갈 때, 세션에 올려둔 creator를 삭제시켜주는 인터셉터. 
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Creator creator = (Creator) request.getSession().getAttribute("creator"); 
		
		if( creator != null) {
			request.getSession().removeAttribute("creator");
		}
		
		return true;
	}

}
