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
 * Servlet implementation class updates
 */
@WebServlet("/updates")
public class updates extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 String faccode= request.getParameter("faccode");
	        String assignsub = request.getParameter("assignsub");
	        String attend = request.getParameter("attend");
	        String leccap = request.getParameter("leccap");
	        String Collectassign = request.getParameter("Collectassign");
	        String givenassign = request.getParameter("givenassign");
	        String gradedassign = request.getParameter("gradedassign");
	        String remark = request.getParameter("remark");
	        
	        RequestDispatcher dispatcher = null;
	        Connection con = null;

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro?useSSL=false", "root", "shub0505");
	            PreparedStatement pst = con.prepareStatement("insert into dlr (faccode,assignsub,attend,leccap,Collectassign,givenassign,gradedassign,remark) values (?,?,?,?,?,?,?,?)");
	            pst.setString(1, faccode);
	            pst.setString(2, assignsub);
	            pst.setString(3, attend);
	            pst.setString(4, leccap);
	            pst.setString(5, Collectassign);
	            pst.setString(6, givenassign);
	            pst.setString(7, gradedassign);
	            pst.setString(8, remark);

	            int rowCount = pst.executeUpdate();

	            if (rowCount > 0) {
	                request.setAttribute("status", "success");
	            } else {
	                request.setAttribute("status", "failed");
	            }

	            dispatcher = request.getRequestDispatcher("fachome.jsp");
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
