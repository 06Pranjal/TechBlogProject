package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;

import com.tech.blog.dao.RegisterDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/LoginServlet")
@MultipartConfig
public class LoginServlet extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          

//            fetch all form data
                String userEmail = request.getParameter("email");
              
                String userPassword = request.getParameter("password");
               
               
                

                //create a user dao object..
                RegisterDao dao = new RegisterDao(ConnectionProvider.getConnection());
               
                User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
                
                if(u==null) {
                	
                	Message msg=new Message("Invalid Details !! Try again","error","alert-danger");
                	HttpSession s =request.getSession();
                	s.setAttribute("msg", msg);
                	
                	response.sendRedirect("login_page.jsp");
                	
                }else {
                	
                	
                	HttpSession s=request.getSession();
                	s.setAttribute("currentUser", u);
                	response.sendRedirect("profile.jsp");
  
                }
                
            
        }catch (Exception e) {
            System.out.println("Exception occurred: " + e.getMessage());
            e.printStackTrace();
        }
       

        
    }

	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    processRequest(request, response);  // ✅ FIX
	}

	
	@Override
    public String getServletInfo() {
        return "Short description";
    }

}


	
