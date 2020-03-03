<%-- 
    Document   : sendMailAttach
    Created on : 18 Sep, 2015, 6:34:56 PM
    
--%>



<%@page import="hello.connect"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.io.IOException"%>
<%@page import="javax.mail.internet.MimeMultipart"%>
<%@page import="javax.mail.internet.MimeBodyPart"%>
<%@page import="java.util.Date"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//MultipartRequest mr=new MultipartRequest(request,"D:\\main_Project\\SandB\\web\\Admin\\mail");       


        //String mail_path="mail";
        //mail_path=mail_path.concat("/");
       // mail_path=mail_path.concat(mr.getOriginalFileName("file_name"));
       
       // String ran=Dbconnect.getSaltString();
       String ran=request.getParameter("no");
        String acc=(String)session.getAttribute("username");
        String ema="";
        String sql="select *from user_registration where username='"+acc+"'";
        ResultSet rs=connect.getData(sql);
        if(rs.next())
        {
          ema=rs.getString("email");  
        }
        //String acc=request.getParameter("email");
       //Log(acc);
      // System.out.println(ran);
        final String username = "r6bairportproject@gmail.com";
        final String password = "232425@r6b";
        String toAddress=acc;
        String subject="Online Parking";
        String message="Hello,Thanks for booking your parking slot on our Online Parking .your slot id is"+ran;
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.user", username);
        properties.put("mail.password", password);
 
        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };
        Session sess = Session.getInstance(properties, auth);
 
        // creates a new e-mail message
        Message msg = new MimeMessage(sess);
 
        msg.setFrom(new InternetAddress(username));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
 
        // creates message part
        MimeBodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setContent(message, "text/html");
 
        // creates multi-part
        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(messageBodyPart);
 
        // adds attachments
      //  if (mail_path != null ) {
             
               // MimeBodyPart attachPart = new MimeBodyPart();
 
               // try {
                   // attachPart.attachFile(mail_path);
                //} catch (IOException ex) {
                //    ex.printStackTrace();
               // }
 
               // multipart.addBodyPart(attachPart);
            
       // }
 
        // sets the multi-part as e-mail's content
        msg.setContent(multipart);
 
        // sends the e-mail
        Transport.send(msg);
        
         
        response.sendRedirect("userhome.jsp");
        
 
   
 
    
 
        
        
    %>