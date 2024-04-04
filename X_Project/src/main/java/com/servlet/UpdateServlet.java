package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Login;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
		
			String name = request.getParameter("name");
			String dept = request.getParameter("dept");
			int salary = Integer.parseInt(request.getParameter("salary"));
			String joindate = request.getParameter("joindate");
			
			int id = Integer.parseInt(request.getParameter("id").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Login login = s.get(Login.class, id);
			login.setId(id);
			login.setName(name);
			login.setDept(dept);
			login.setSalary(salary);
			login.setJoindate(joindate);
					
			
			Transaction tx = s.beginTransaction();
			
			tx.commit();
			s.close();
			
			response.sendRedirect("view_emp.jsp");
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
