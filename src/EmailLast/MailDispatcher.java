package EmailLast;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MailDispatcher")
public class MailDispatcher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private MailSenderBean mailSender;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fromEmail = "testerforemailabcd1234@gmail.com";
		String username = "testerforemailabcd1234";
		String password = "0213002130";
		
		try(PrintWriter out = response.getWriter()){
			
			//Call to mail sender bean
			
			mailSender.sendMail(fromEmail, username, password, "testerforemailabcd1234@gmail.com", "Test", "Here is a test");
			
			//------------------------------
			
			
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Mail Status</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Mail Status !!</h1>");
			out.println("<h1>Mail Sent Successfully  !!</h1>");
			out.println("Click here <a href='../WebContent/WEB-INF/Email/Email.jsp'>Click here</a> to go back");
			out.println("</body>");
			out.println("</html>");
			
			
			
		}
		
	}

}
