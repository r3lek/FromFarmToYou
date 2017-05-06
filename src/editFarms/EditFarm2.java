package editFarms;

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


@WebServlet("/Farms/EditFarm2")
public class EditFarm2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public EditFarm2() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/EditFarms/EditFarms2.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String h1_header = request.getParameter("h1_header");
		String service_text = request.getParameter("service_text");
		String first_h4 = request.getParameter("first_h4");
		String arranging_text = request.getParameter("arranging_text");
		String second_h4 = request.getParameter("second_h4");
		String arranging2_text = request.getParameter("arranging2_text");
		String third_h4 = request.getParameter("third_h4");
		String arranging3_text = request.getParameter("arranging3_text");
		String fourth_h4 = request.getParameter("fourth_h4");
		String arranging4_text = request.getParameter("arranging4_text");
		
		
		//Egg param
        String egg1Name = request.getParameter("egg1Name");
        String egg2Name = request.getParameter("egg2Name");
        String egg3Name = request.getParameter("egg3Name");
        String egg1Description = request.getParameter("egg1Description");
        String egg2Description = request.getParameter("egg2Description");
        String egg3Description = request.getParameter("egg3Description");
        int egg1Quantity = Integer.parseInt(request.getParameter("egg1Quantity"));
        int egg2Quantity = Integer.parseInt(request.getParameter("egg2Quantity"));
        int egg3Quantity = Integer.parseInt(request.getParameter("egg3Quantity"));
        double egg1Price = Double.parseDouble(request.getParameter("egg1Price"));
        double egg2Price = Double.parseDouble(request.getParameter("egg2Price"));
        double egg3Price = Double.parseDouble(request.getParameter("egg3Price"));

		
		
		
        Connection c = null;
        try
        {
			String url = "jdbc:mysql://localhost:3306/cs3220stu63";
			String username = "cs3220stu63";
			String password = "abcd";
            
            //Update the farms services
            String sql = "UPDATE farmerInfo SET h1_header = ?, service_texT = ?, first_h4 = ?, arranging_text = ?, second_h4 = ?, arranging2_text = ?, third_h4 = ?, arranging3_text = ?, fourth_h4 = ?, arranging4_text = ? WHERE id = 2";

            c = DriverManager.getConnection( url, username, password );
            PreparedStatement pstmt = c.prepareStatement(sql);
            pstmt.setString(1, h1_header);
            pstmt.setString(2, service_text);
            pstmt.setString(3, first_h4);
            pstmt.setString(4, arranging_text);
            pstmt.setString(5, second_h4);
            pstmt.setString(6, arranging2_text);
            pstmt.setString(7, third_h4);
            pstmt.setString(8, arranging3_text);
            pstmt.setString(9, fourth_h4);
            pstmt.setString(10, arranging4_text);
            pstmt.executeUpdate();
            
            //Update all egg info
            String update1Eggs = "UPDATE inventory SET name = ?, description = ?, price = ?, quantity = ? WHERE id = 5";
            String update2Eggs = "UPDATE inventory SET name = ?, description = ?, price = ?, quantity = ? WHERE id = 6";
            String update3Eggs = "UPDATE inventory SET name = ?, description = ?, price = ?, quantity = ? WHERE id = 7";
          
            
            //Statement for egg 1. Update it
            pstmt = c.prepareStatement(update1Eggs);
            pstmt.setString(1, egg1Name);
            pstmt.setString(2, egg1Description);
            pstmt.setFloat(3, (float) egg1Price);
            pstmt.setInt(4, egg1Quantity);
            pstmt.executeUpdate();
            
            //For egg 2 
            pstmt = c.prepareStatement(update2Eggs);
            pstmt.setString(1, egg2Name);
            pstmt.setString(2, egg2Description);
            pstmt.setFloat(3, (float) egg2Price);
            pstmt.setInt(4, egg2Quantity);
            pstmt.executeUpdate();
            
            //For egg 3 
            pstmt = c.prepareStatement(update3Eggs);
            pstmt.setString(1, egg3Name);
            pstmt.setString(2, egg3Description);
            pstmt.setFloat(3, (float) egg3Price);
            pstmt.setInt(4, egg3Quantity);
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
	
        response.sendRedirect("Farm2Controller"); //After updates send them back
	}
	
	
	
	

}
