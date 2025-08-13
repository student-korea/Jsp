package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class FormPage2
 */
@WebServlet("/FormPage2")
public class FormPage2 extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Action 실행");
		String name = request.getParameter("name");
		int kor =Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		int total = kor+eng+math;
		double avg = total/3.0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>성적 사이즈<title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<p>이름 : "+"name"+"</p>");
		writer.println("<p>국어 : "+"kor"+"</p>");
		writer.println("<p>영어 : "+"eng"+"</p>");
		writer.println("<p>수학 : "+"math"+"</p>");
		writer.println("<p>총합 : "+"total"+"</p>");
		writer.println("<p>평균 : "+"avg"+"</p>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get 출력");
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post 출력");
		doAction(request,response);
	}

}
