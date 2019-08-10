/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManageData;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author YOGESHKUMAR MEHTA
 */
public class RegisterUserDAO {
    static Connection currentcon = null;
    
    public static RegisterUserBean Login(RegisterUserBean bean){
       String UserName = bean.getUserName();
       String Password = bean.getPassword();
       Statement stmt = null;
       String query = "select * from tblregisteruser where UserName= '"+UserName+"' and Password= '"+Password+"'";
       try{
           currentcon = ConnectionManager.GetConnection();
           stmt = currentcon.createStatement();
           ResultSet rs = stmt.executeQuery(query);
           boolean bln = rs.next();
           if(bln){
               bean.setValid(true);
               bean.setRegisterUserID(rs.getInt(1));
           }
           else{
               bean.setValid(false);
           }
       }
       catch(Exception ex){
           ex.printStackTrace();
       }
        return bean;
    } 
    
    private static String alphanumericPassword()
    {
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"
                                    + "abcdefghijklmnopqrstuvxyz"; 
  
        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(5); 
  
        for (int i = 0; i < 5; i++) { 
  
            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
        } 
  
        return sb.toString();
    }
    
//    private static void sendEmail(int registerUserID, String Email, String mess, String title)
//    {
//        //AB.InsertSMTPProfile(registerUserID, "anisha.gaywala@gmail.com", Email, title, mess, 1);
//        
//        //Email start
//        try
//        {
//            String host = "smtp.gmail.com";
//            String user = "da201812120@gmail.com";
//            String pass = "disha21897";
//            String to = Email;
//            String from = "da201812120@gmail.com";
//            String subject = "homestate.";
//            String messageText = mess; 
//            boolean sessionDebug = false;
//            
//            Properties props = System.getProperties();
//            
//            props.put("mail.smtp.starttls.enable", "true");
//            props.put("mail.smtp.host", host);
//            props.put("mail.smtp.port", "587");
//            props.put("mail.smtp.auth", "true");
//            props.put("mail.smtp.starttls.required", "true");
//
//            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
//            
//            Session mailsession = Session.getDefaultInstance(props, null);
//            mailsession.setDebug(sessionDebug);
//            Message msg = new MimeMessage(mailsession);
//            msg.setFrom(new InternetAddress(from));
//            InternetAddress[] address = {new InternetAddress(to)};
//            msg.setRecipients(Message.RecipientType.TO, address);
//            msg.setSubject(subject);
//            msg.setSentDate(new Date());
//            msg.setText(messageText);
//            
//            Transport transport = mailsession.getTransport("smtp");
//            transport.connect(host, user, pass);
//            transport.sendMessage(msg, msg.getAllRecipients());
//            transport.close();
//            System.out.println("email send successfully");
//        }
//        catch(Exception ex)
//        {
//            ex.printStackTrace();
//        }
//    }    //Email end
    
    
    public static RegisterUserBean Register(RegisterUserBean bean){
        String UserName = bean.getUserName();
        String Email = bean.getEmailID();
        String Gender =bean.getGender();
        String Password =bean.getPassword();
        double MobileNo1 = bean.getMobileNumber1();
        double MobileNo2 = bean.getMobileNumber2();
        //String TemporaryPass = alphanumericPassword();
        int CreatedBySystemUserID = 1;
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        Date date = new Date();  
        String CreatedDateTime = formatter.format(date);  
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = currentcon.prepareStatement("insert into tblregisteruser(UserName,TemporaryPassword,Password,EmailID,MobileNumber1,MobileNumber2,Gender,CreatedBySystemUserID,CreatedDateTime) values (?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            
        ps.setString(1, UserName);  
        ps.setString(2, Password);
        ps.setString(3, Password);
        ps.setString(4, Email);
        ps.setDouble(5, MobileNo1);
        ps.setDouble(6, MobileNo2);
        ps.setString(7, Gender);
        ps.setInt(8, CreatedBySystemUserID);
        ps.setString(9, CreatedDateTime);
        
        ps.executeUpdate();
        ResultSet rs = ps.getGeneratedKeys();
        int generatedKey = 0;
            if (rs.next()) {
                generatedKey = rs.getInt(1);
                System.out.println("Inserted record's ID: " + generatedKey);
                bean.setValid(true);
                //Email e = new Email();
               // e.send();
                
                //sendEmail(generatedKey,bean.getEmailID(),msg,title);
            }
            else
                bean.setValid(false);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return bean;
    }  
    
    public static int changePassword(RegisterUserBean ob){
        String pass = ob.getPassword();
        int RegisterUserID = ob.getRegisterUserID();
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = null;
                ps = currentcon.prepareStatement("update tblregisteruser set Password=? where RegisterUserID=?");
                ps.setString(1, pass);
                ps.setInt(2, RegisterUserID);
        
        int cnfr = ps.executeUpdate();
        return cnfr;
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return 0;
}
    
}
