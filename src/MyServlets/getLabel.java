package MyServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Login.SigninUser;
import shoppingCart.Products;


@WebServlet("/Farms/getLabel")
public class getLabel extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		ArrayList<Products> products = (ArrayList<Products>) request.getSession().getAttribute("productList");
		//int farm_num = products.get(0).getFarm_num(); // Get the place egg is from
		
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String zip = request.getParameter("zip");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		String date = request.getParameter("date");
		
		if(request.getSession().getAttribute("UserList") == null){ //No one is signed in
		
			SigninUser currentUser = new SigninUser(0, firstName, lastName, null, email, null, null); 
			request.getSession().setAttribute("currentUser", currentUser);
			request.getSession().setAttribute("address", address);
			request.getSession().setAttribute("city", city);
			request.getSession().setAttribute("state", state);
			
			//request.getRequestDispatcher("/WEB-INF/Farms/ShippingLabel.jsp").forward(request, response);	
			
		}
		
		else{

			SigninUser currentUser = new SigninUser(0, firstName, lastName, null, email, null, null); 
			request.getSession().setAttribute("currentUser", currentUser);
			request.getSession().setAttribute("address", address);
			request.getSession().setAttribute("city", city);
			request.getSession().setAttribute("state", state);

		}
		
		PrintWriter out = response.getWriter();
		
		out.println("The date " + date);
		request.getRequestDispatcher("/WEB-INF/Farms/ShowLabel.jsp").forward(request, response);		
		
		
	      
	    /*  String title = "Shipping Label";
	      
	      out.println("<html>\n" +
	    	         "<head><title>" + title + "</title></head>\n" +
	    	         "<body bgcolor=\"#f0f0f0\">\n" +
	    	         "<h1 align=\"center\">" + title + "</h1>\n");
	    	        
	      out.println("<br><br>");
	      
	      out.println("<center><img style=\"vertical-align: right;\" width=\"100px\" height=\"75px\" src=\"../images/chick.png\"></center>");
	      out.println("<br>");
	      out.println("<center><table border=\"7\"><thead><tr>" +
	      
	              "<th>From: " + request.getParameter("firstName") + " " + request.getParameter("lastName") + "</th></tr></thead>");
	     
	      out.println("<tr><td>Address: " + request.getParameter("address") + "</td>");
	            
	      out.println("</tr><tr><td>" + request.getParameter("city") + ", " + request.getParameter("state") + ", " + request.getParameter("zip") + "</td>");
	            
	      out.println("</tr><tr><td>" + request.getParameter("country") + "</td></tr>");
	      
	 
	      out.println("<tr>" +
	              "<th>TO: " + request.getParameter("firstName2") + " " + request.getParameter("lastName2") + "</th></tr>");
	     
	      out.println("<tr><td>Address: " + request.getParameter("address2") + "</td>");
	            
	      out.println("</tr><tr><td>" + request.getParameter("city2") + ", " + request.getParameter("state2") + ", " + request.getParameter("zip2") + "</td>");
	            
	      out.println("</tr><tr><td>" + request.getParameter("country") + "</td></tr>");
	           
	      
	      out.println("<tr>" +
	              "<th>Date: " + request.getParameter("date") + "</th></tr>" + "<tr><th>Tracking#: ");
	    		  for(int i = 0; i < 7; i+=1) {
	  	        	
	      	        out.print((int)(Math.random() * 16)); 
	      	        } 
	    		  out.print("</th></tr>");
	     
	      out.println("<tr><th>Weight: " + request.getParameter("weight") + "</th></tr>");
	      
	      out.println("<tr><td><img style=\"vertical-align: bottom;\" width=\"274px\" height=\"50px\" src=\"../images/barcode.jpg\"></td></tr>");
	      out.println("</table></center></body></html>");
*/	      
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
