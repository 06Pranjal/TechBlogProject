package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.tech.blog.entities.Message;



@WebServlet("/LogoutServlet")
@MultipartConfig
public class LogoutServlet extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession s =request.getSession();
        
        s.removeAttribute("currentUser");
        
        Message m=new Message("Logout Succesfull", "success","alert-success");
        
        
        s.setAttribute("msg",m);
        
        response.sendRedirect("login_page.jsp");
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
