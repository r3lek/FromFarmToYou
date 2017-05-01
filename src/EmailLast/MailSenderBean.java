package EmailLast;

import java.util.Properties;

import javax.ejb.Stateless;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.istack.internal.logging.Logger;

import sun.util.logging.PlatformLogger.Level;


@Stateless
public class MailSenderBean {

	   public void sendMail(String fromEmail, String username, String password, String toEmail, String subject, String message){
	    	
	    	
	    	Properties props = System.getProperties();
	    	props.put("mail.smtp.host", "smtp.gmail.com");
	    	props.put("mail.smtp.auth", "true");
	    	props.put("mail.smtp.port", "465");
	    	props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    	props.put("mail.smtp.socketFactory.port", "465");
	    	props.put("mail.smtp.socketFactory.fallback", "false");
	    	
	    	Session mailSession = Session.getDefaultInstance(props, null);
	    	mailSession.setDebug(true);
	    	
	    	
	    	
	    	try{
	    	Message mailMessage = new MimeMessage(mailSession);
	    	
	    	mailMessage.setFrom(new InternetAddress (fromEmail));
	    	mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
	    	mailMessage.setContent(message, "text/html");
	    	mailMessage.setSubject(subject);
	    	
	    	Transport.send(mailMessage);
	    	
	    	//Transport transport = mailSession.getTransport("smtp");
	    	//transport.connect("smtp.gmail.com",username, password);
	    	//transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
	    	
	    	} catch(MessagingException e){
	    		//Logger.getLogger(MailSenderBean.class.getName()).log(Level.SEVERE, null, e);
	    		throw new RuntimeException(e);
	    	}
	   }

}
