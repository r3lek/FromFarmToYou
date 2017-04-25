package editFarms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class EditFarm1
 */
@WebServlet("/Farms/EditFarm1")
public class EditFarm1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditFarm1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/EditFarms/EditFarm1.jsp").forward(request, response);
		
		
		//Check if the farmer is logged in.
		
	
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//Get parameters that the farmer chose to edit 
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
		
		
		
		
        Connection c = null;
        try
        {
            String url = "jdbc:mysql://localhost/cs3220stu63";
            String username = "cs3220stu63";
            String password = "abcd";

            String sql = "UPDATE farmerInfo SET h1_header = ?, service_texT = ?, first_h4 = ?, arranging_text = ?, second_h4 = ?, arranging2_text = ?, third_h4 = ?, arranging3_text = ?, fourth_h4 = ?, arranging4_text = ?";

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
            
            /*ResultSet rs = pstmt.executeQuery();

            if( rs.next() != false ){
                entry = new GuestBookEntry( rs.getInt( "id" ),
                    rs.getString( "name" ), rs.getString( "message" ) );
            }*/
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
		
		
		
	}

}
