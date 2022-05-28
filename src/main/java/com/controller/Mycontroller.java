package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.LoginBean;

public class Mycontroller extends HttpServlet{    //Controller  셋팅, HttpServlet을 상속해야 함. 

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Client에서 Get 방식으로 요청할 경우 처리하는 블락 
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Client에서 Post 방식으로 요청할 경우 처리하는 블락 
		
		response.setContentType("text.html; charset = utf-8"); 
			//client 에 뷰 페이지로 전송할 contentType을 정의함
		String id = request.getParameter("id"); 
		String password = request.getParameter("passwd"); 
		
		LoginBean bean = new LoginBean();  // 저장된 값을 LoginBean 안에 세터로 저장함
		bean.setId(id);
		bean.setPassword(password);
		
		request.setAttribute("bean", bean); 
		
		boolean status = bean.validate();     //password 변수값이 "admin" 이면, status 가 true로 반환됨.
		
		if (status) { // 뷰 페이지를 클라이언트에 던지는 부분. 받는 값에 따라서 성공 실패의 경우에 맞춘 뷰 페이지를 전송함.
			RequestDispatcher rd = request.getRequestDispatcher("mvc_success.jsp"); 
			rd.forward(request, response); 
			
		}else { 
			RequestDispatcher rd = request.getRequestDispatcher("mvc_error.jsp"); 
			rd.forward(request, response); 
			
		}
		
		
		
		
		
		
		
		
		
		
		
	}  
	
	

}
