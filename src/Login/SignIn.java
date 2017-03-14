package Login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Login</title>");
		out.println("<link rel='stylesheet' href='LoginCSS.css' type='text/css' >");
		out.println("</head>");
		
		out.println("<body>");
		
		out.println("");
		
		
		out.println(" <!-- All the files that are required -->");
		out.println(" <link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css\">");
		out.println(" <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>");
		out.println(" <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js\"></script>");
		out.println(" <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />");
		out.println(" <!-- Where all the magic happens -->");
		out.println(" <!-- LOGIN FORM -->");
		out.println(" <div class=\"text-center\" style=\"padding:50px 0\">");
		out.println("     <div class=\"logo\">login</div>");
		out.println("     <!-- Main Form -->");
		out.println("     <div class=\"login-form-1\">");
		out.println("         <form id=\"login-form\" class=\"text-left\">");
		out.println("             <div class=\"login-form-main-message\"></div>");
		out.println("             <div class=\"main-login-form\">");
		out.println("                 <div class=\"login-group\">");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"lg_username\" class=\"sr-only\">Username</label>");
		out.println("                         <input type=\"text\" class=\"form-control\" id=\"lg_username\" name=\"lg_username\" placeholder=\"username\">");
		out.println("                     </div>");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"lg_password\" class=\"sr-only\">Password</label>");
		out.println("                         <input type=\"password\" class=\"form-control\" id=\"lg_password\" name=\"lg_password\" placeholder=\"password\">");
		out.println("                     </div>");
		out.println("                     <div class=\"form-group login-group-checkbox\">");
		out.println("                         <input type=\"checkbox\" id=\"lg_remember\" name=\"lg_remember\">");
		out.println("                         <label for=\"lg_remember\">remember</label>");
		out.println("                     </div>");
		out.println("                 </div>");
		out.println("                 <button type=\"submit\" class=\"login-button\"><i class=\"fa fa-chevron-right\"></i></button>");
		out.println("             </div>");
		out.println("             <div class=\"etc-login-form\">");
		out.println("                 <p>forgot your password? <a href=\"#\">click here</a></p>");
		out.println("                 <p>new user? <a href=\"#\">create new account</a></p>");
		out.println("             </div>");
		out.println("         </form>");
		out.println("     </div>");
		out.println("     <!-- end:Main Form -->");
		out.println(" </div>");
		out.println("<!-- REGISTRATION FORM -->");
		out.println(" <div class=\"text-center\" style=\"padding:50px 0\">");
		out.println("     <div class=\"logo\">register</div>");
		out.println("     <!-- Main Form -->");
		out.println("     <div class=\"login-form-1\">");
		out.println("         <form id=\"register-form\" class=\"text-left\">");
		out.println("             <div class=\"login-form-main-message\"></div>");
		out.println("             <div class=\"main-login-form\">");
		out.println("                 <div class=\"login-group\">");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"reg_username\" class=\"sr-only\">Email address</label>");
		out.println("                         <input type=\"text\" class=\"form-control\" id=\"reg_username\" name=\"reg_username\" placeholder=\"username\">");
		out.println("                     </div>");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"reg_password\" class=\"sr-only\">Password</label>");
		out.println("                         <input type=\"password\" class=\"form-control\" id=\"reg_password\" name=\"reg_password\" placeholder=\"password\">");
		out.println("                     </div>");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"reg_password_confirm\" class=\"sr-only\">Password Confirm</label>");
		out.println("                         <input type=\"password\" class=\"form-control\" id=\"reg_password_confirm\" name=\"reg_password_confirm\" placeholder=\"confirm password\">");
		out.println("                     </div>");
		out.println("                     ");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"reg_email\" class=\"sr-only\">Email</label>");
		out.println("                         <input type=\"text\" class=\"form-control\" id=\"reg_email\" name=\"reg_email\" placeholder=\"email\">");
		out.println("                     </div>");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"reg_fullname\" class=\"sr-only\">Full Name</label>");
		out.println("                         <input type=\"text\" class=\"form-control\" id=\"reg_fullname\" name=\"reg_fullname\" placeholder=\"full name\">");
		out.println("                     </div>");
		out.println("                     ");
		out.println("                     <div class=\"form-group login-group-checkbox\">");
		out.println("                         <input type=\"radio\" class=\"\" name=\"reg_gender\" id=\"male\" placeholder=\"username\">");
		out.println("                         <label for=\"male\">male</label>");
		out.println("                         ");
		out.println("                         <input type=\"radio\" class=\"\" name=\"reg_gender\" id=\"female\" placeholder=\"username\">");
		out.println("                         <label for=\"female\">female</label>");
		out.println("                     </div>");
		out.println("                     ");
		out.println("                     <div class=\"form-group login-group-checkbox\">");
		out.println("                         <input type=\"checkbox\" class=\"\" id=\"reg_agree\" name=\"reg_agree\">");
		out.println("                         <label for=\"reg_agree\">i agree with <a href=\"#\">terms</a></label>");
		out.println("                     </div>");
		out.println("                 </div>");
		out.println("                 <button type=\"submit\" class=\"login-button\"><i class=\"fa fa-chevron-right\"></i></button>");
		out.println("             </div>");
		out.println("             <div class=\"etc-login-form\">");
		out.println("                 <p>already have an account? <a href=\"#\">login here</a></p>");
		out.println("             </div>");
		out.println("         </form>");
		out.println("     </div>");
		out.println("     <!-- end:Main Form -->");
		out.println(" </div>");
		out.println(" <!-- FORGOT PASSWORD FORM -->");
		out.println(" <div class=\"text-center\" style=\"padding:50px 0\">");
		out.println("     <div class=\"logo\">forgot password</div>");
		out.println("     <!-- Main Form -->");
		out.println("     <div class=\"login-form-1\">");
		out.println("         <form id=\"forgot-password-form\" class=\"text-left\">");
		out.println("             <div class=\"etc-login-form\">");
		out.println("                 <p>When you fill in your registered email address, you will be sent instructions on how to reset your password.</p>");
		out.println("             </div>");
		out.println("             <div class=\"login-form-main-message\"></div>");
		out.println("             <div class=\"main-login-form\">");
		out.println("                 <div class=\"login-group\">");
		out.println("                     <div class=\"form-group\">");
		out.println("                         <label for=\"fp_email\" class=\"sr-only\">Email address</label>");
		out.println("                         <input type=\"text\" class=\"form-control\" id=\"fp_email\" name=\"fp_email\" placeholder=\"email address\">");
		out.println("                     </div>");
		out.println("                 </div>");
		out.println("                 <button type=\"submit\" class=\"login-button\"><i class=\"fa fa-chevron-right\"></i></button>");
		out.println("             </div>");
		out.println("             <div class=\"etc-login-form\">");
		out.println("                 <p>already have an account? <a href=\"#\">login here</a></p>");
		out.println("                 <p>new user? <a href=\"#\">create new account</a></p>");
		out.println("             </div>");
		out.println("         </form>");
		out.println("     </div>");
		out.println("     <!-- end:Main Form -->");
		out.println(" </div>");
		
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
