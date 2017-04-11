package Login;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Registration
 */
@WebServlet("/Login/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static int idSeed = 1;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/Login_Registration/Registration.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get the user input
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        
        
        //Boolean variables to validate & display error message
        boolean validName = name != null && name.trim().length() > 0;
        boolean validEmail = email != null && email.trim().length() > 0;
        boolean validUserName = username != null && username.trim().length() > 0;
        boolean validPassword = password != null && password.trim().length() > 0;
        boolean validPassword2 = password2 != null && password2.trim().length() > 0;
        
        
        
        if (validName && validEmail && validUserName && validPassword && validPassword2 && password.equals(password2)){
        
            //Create new user
            SigninUser UserEntry = new SigninUser( idSeed++, name, email, username, password);
    
            //Get a reference to the user
            List<SigninUser> UserEntriesList = (List<SigninUser>) getServletContext().getAttribute("UserList");
            UserEntriesList.add(UserEntry);
    
            // send the user back to the guest book page
            response.sendRedirect("Signin");
        }
        
        else{
            if (!validName)
                request.setAttribute("nameError", "Please enter your name");
            if(!validEmail)
                request.setAttribute("emailError", "Please enter a email");
            if(!validUserName)
                request.setAttribute("usernameError", "Please enter a username");
            if(!password.equals(password2))
            	request.setAttribute("failsameError", "Passwords do not match");
            if(!validPassword)
                request.setAttribute("passwordError", "Please enter a password");
            if(!validPassword2)
                request.setAttribute("password2Error", "Please confirm the password");
            
            doGet(request, response);
        }
	}

}
