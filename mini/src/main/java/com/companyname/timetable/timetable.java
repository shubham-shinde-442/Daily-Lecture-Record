package com.companyname.timetable;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class timetable
 */
@WebServlet("/timetable")

public class timetable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		    String sem = request.getParameter("sem");
	        String divi = request.getParameter("divi");
	        String strength = request.getParameter("strength");
	        String subject = request.getParameter("subject");
	        String timing = request.getParameter("timing");
	        String faculty = request.getParameter("faculty");
	        String room = request.getParameter("room");
	        
	        RequestDispatcher dispatcher = null;
	        Connection con = null;

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable?useSSL=false", "root", "shub0505");
	            PreparedStatement pst = con.prepareStatement("insert into content (sem,divi,strength,subject,timing,faculty,room) values (?,?,?,?,?,?,?)");
	            pst.setString(1, sem);
	            pst.setString(2, divi);
	            pst.setString(3, strength);
	            pst.setString(4, subject);
	            pst.setString(5, timing);
	            pst.setString(6, faculty);
	            pst.setString(7, room);

	            int rowCount = pst.executeUpdate();

	            if (rowCount > 0) {
	                request.setAttribute("status", "success");
	            } else {
	                request.setAttribute("status", "failed");
	            }

	            dispatcher = request.getRequestDispatcher("timetable.jsp");
	            dispatcher.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (con != null) {
	                    con.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	}

}
