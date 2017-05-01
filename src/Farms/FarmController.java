package Farms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Farms/FarmController")
public class FarmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD
=======
        Connection c = null; // set connection to db as null

		try {

			String url = "jdbc:mysql://localhost:3306/cs3220stu63";
			String username = "cs3220stu63";
			String password = "abcd";
			c = DriverManager.getConnection(url, username, password);
			
			
			String query = "INSERT INTO users (username, email, password) values(?,?,?)";
			/*
			//Create prepared statement to prevent sql injections
			String query = "INSERT INTO users (username, email, password) values(?,?,?)";
			PreparedStatement statement = c.prepareStatement(query);
			statement.setString(1, usernameGiven);
			statement.setString(2, email);
			statement.setString(3, passwordGiven);
			statement.executeUpdate();*/



		} catch (SQLException e) {
			throw new ServletException(e);
		}

		finally {
			try {
				if (c != null) {
					c.close();
				}

			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		
>>>>>>> ffbc276484ff8199e13aedfa3240550d6ae16042
		
		System.out.println("Coming back from the cart " + request.getSession().getAttribute("previousURL"));		
		request.getRequestDispatcher("/WEB-INF/Farms/Farm1.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
