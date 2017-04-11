package Login;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = "/Login/Signin", loadOnStartup = 1)
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		// Create a local list of Todo Items
		ArrayList<SigninUser> ListOfUsers = new ArrayList<SigninUser>();
		
		//Pre-populate my list
		ListOfUsers.add(new SigninUser(1, "Robert Martinez", "rmartinez213@yahoo.com","rmart167", "test"));
		
	    getServletContext().setAttribute( "UserList", ListOfUsers);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		request.getRequestDispatcher("/WEB-INF/Login_Registration/Signin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Gather user input
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//Boolean to direct to error message
		boolean validUserName = username != null && username.trim().length() > 0;
        boolean validPassword = password != null && password.trim().length() > 0;
		
		//This will get the list of the users
		ArrayList<SigninUser> UserList = (ArrayList<SigninUser>) getServletContext().getAttribute("UserList");
		
		
		//Create for each loop to iterate through the list and get the data
		for(SigninUser user: UserList){
			if(username.equalsIgnoreCase(user.getUsername()) && password.equals(user.getPassword())){
				
				//A session to store data for a limited amount of time
				HttpSession session = request.getSession();
				session.setAttribute("UserList", user);
				
				//redirect to other servlet
				response.sendRedirect("Homepage");
				return;
			}
			
			else{
				if(username.equalsIgnoreCase(user.getUsername())){
					request.removeAttribute("incorrectusernameError");
					request.removeAttribute("usernameError");
				}
				
				else if(!validUserName){
		            request.setAttribute("usernameError", "Please enter a username");
		            request.removeAttribute("incorrectusernameError");
					request.setAttribute("incorrectusernameError", "");
				}
				else{
					request.setAttribute("incorrectusernameError", "Incorrect username.");
					request.removeAttribute("usernameError");
					request.setAttribute("usernameError", "");
				}
				
				if(password.equals(user.getPassword())){
					request.removeAttribute("passwordError");
					request.removeAttribute("incorrectpasswordError");
					System.out.println("1");
				}
				
				else if(!validPassword){
		        	request.setAttribute("passwordError", "Please enter a password");
		        	request.removeAttribute("incorrectpasswordError");
		        	request.setAttribute("incorrectpasswordError", "");
					System.out.println("2");
		        }
		        else{
					request.setAttribute("incorrectpasswordError", "Incorrect password");
					request.removeAttribute("passwordError");
					request.setAttribute("passwordError", "");
					System.out.println("3");
		        }
			}
		}
		    
		doGet(request, response);
	}

}
