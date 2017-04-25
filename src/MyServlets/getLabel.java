package MyServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getLabel")
public class getLabel extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");

	      PrintWriter out = response.getWriter();
	      String title = "Shipping Label";
	      
	      out.println("<html>\n" +
	    	         "<head><title>" + title + "</title></head>\n" +
	    	         "<body bgcolor=\"#f0f0f0\">\n" +
	    	         "<h1 align=\"center\">" + title + "</h1>\n");
	    	        
	      out.println("<br><br>");
	      
	      out.println("<center><img style=\"vertical-align: right;\" width=\"100px\" height=\"75px\" src=\"chick.png\"></center>");
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
	      
	      out.println("<tr><td><img style=\"vertical-align: bottom;\" width=\"274px\" height=\"50px\" src=\"barcode.jpg\"></td></tr>");
	      out.println("</table></center></body></html>");
	      
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
