package ContactUs;

import java.io.IOException;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.SigninUser;


/**
 * Servlet implementation class ContactUs
 */

@WebServlet("/ContactUs/ContactUsModule")
public class ContactUsModule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get the session from the user to get status (admin or customer)
		HttpSession session = request.getSession();
		
		//User has not signed in (prevents session error)
		if(session.getAttribute("UserList") == null){
			request.getRequestDispatcher("/WEB-INF/ContactUs/ContactUs.jsp").forward(request, response);
		}
		
		else{
			
			ArrayList<SigninUser> List = (ArrayList) session.getAttribute("UserList");
			String status = "";
			
			for(SigninUser user: List){
				status = user.getStatus();
			}
			
			if(status.equals("Admin")){
				request.getRequestDispatcher("/WEB-INF/ContactUs/ContactUsAdmin.jsp").forward(request, response);
			}
			
			else{
				request.getRequestDispatcher("/WEB-INF/ContactUs/ContactUs.jsp").forward(request, response);
			}
			
			
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String comment = request.getParameter("comment");
		
		java.util.Date date = new java.util.Date();
		java.sql.Date sqlDate = new Date(date.getYear(), date.getMonth(), date.getDate());
		
		
		Connection c = null;
		try
		{

			String url = "jdbc:mysql://localhost:3306/cs3220stu70";
			String username = "cs3220stu70";
			String password = "OINbr*Vc";
			
            String sql = "insert into ContactUs (name, email, comment, date) values(?,?,?,?);";

            c = DriverManager.getConnection( url, username, password);
            PreparedStatement pstmt = c.prepareStatement(sql);
            
            
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, comment);
			pstmt.setDate(4, sqlDate);
			pstmt.executeUpdate();
		}
		
		catch( SQLException e )
		{
			throw new ServletException( e );
		}
		finally
		{
			try
			{
				if( c != null ) c.close();
			}
			catch( SQLException e )
			{
				throw new ServletException( e );
			}
		}
		
	
		request.getRequestDispatcher("/WEB-INF/ContactUs/ContactUsThankYou.jsp").forward(request, response);
		
	}
}
