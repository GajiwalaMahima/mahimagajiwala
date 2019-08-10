/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Email.Email;
import ManageData.RegisterUserBean;
import ManageData.RegisterUserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author YOGESHKUMAR MEHTA
 */
@WebServlet(name = "UserRegistrationServet", urlPatterns = {"/UserRegistrationServet"})
public class UserRegistrationServet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
           RegisterUserBean obj = new RegisterUserBean();
           obj.setUserName(request.getParameter("name"));
           String email = request.getParameter("email");
           obj.setEmailID(email);
           obj.setGender(request.getParameter("gender"));
           obj.setPassword(request.getParameter("Password"));
           String num=request.getParameter("MobileNo1");
           String num2 = request.getParameter("MobileNo2");
           try{
                obj.setMobileNumber1(Double.parseDouble(num));
                obj.setMobileNumber2(Double.parseDouble(num2));
           }
           catch(Exception ex){
               ex.printStackTrace();
           }
           obj = RegisterUserDAO.Register(obj);
   
           if(obj.isValid())
           {
               
               response.sendRedirect("WebContent/Login.jsp");
           }
           else
               response.sendRedirect("WebContent/Registration.jsp");
        } 
             catch (Exception e) {
            e.printStackTrace();  
         
        }  
//          
//           catch(Exception ex){
//            ex.printStackTrace();
        }
    


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
