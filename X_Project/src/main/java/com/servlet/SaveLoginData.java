package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Login;
import com.helper.FactoryProvider;

public class SaveLoginData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveLoginData() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			//name, dept, salary, date fetching
			
			String name = request.getParameter("name");
			String dept = request.getParameter("dept");
			int salary = Integer.parseInt(request.getParameter("salary"));
			String joindate = request.getParameter("joindate");
			
			Login login = new Login(name, dept, salary, joindate);
		
			//System.out.println(login.getId()+ " :"+login.getName()+": "+login.getDept()+ " :"+login.getSalary()+ " :"+login.getJoindate());
			
			//HIBERNATE SAVING DATA INTO DATABASE
			
			Session s = FactoryProvider.getFactory().openSession();
			
			Transaction tx = s.beginTransaction();
			s.save(login);
			
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align: center;'> DATA IS ADDED ...</h1>");
			out.println("<h1 style='text-align: center;'><a href = 'view_emp.jsp'> View All</a> </h1>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
