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

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	try {
    		int id = Integer.parseInt(request.getParameter("id").trim());
    		
    		Session s = FactoryProvider.getFactory().openSession();
    		Transaction tx = s.beginTransaction();
    		Login login = (Login)s.get(Login.class, id);
    		
    		s.delete(login);
    		tx.commit();
    		s.close();
    		response.sendRedirect("view_emp.jsp");
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
	}


}
