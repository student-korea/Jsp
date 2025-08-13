package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class FormPage
 */
@WebServlet("/FormPage")
public class FormPage extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction으로 실행");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		System.out.println("id : "+id);
		System.out.println("name : "+name);
		System.out.println("pw : "+pw);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>응답페이지</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>입력정보</h2>");
		writer.println("<p>아이디 : "+id+"</p>");
		writer.println("<p>이름 : "+name+"</p>");
		writer.println("<p>패스워드 : "+pw+"</p>");
		writer.println("</body>");
		writer.println("</head>");
		writer.println("</html>");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet으로 호출");
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost으로 호출");
		doAction(request,response);
	}

}
