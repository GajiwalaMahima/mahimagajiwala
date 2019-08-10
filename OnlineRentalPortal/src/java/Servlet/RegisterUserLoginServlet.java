/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import ManageData.RegisterUserBean;
import ManageData.RegisterUserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author YOGESHKUMAR MEHTA
 */
@WebServlet(name = "RegisterUserServlet", urlPatterns = {"/RegisterUserServlet"})
public class RegisterUserLoginServlet extends HttpServlet {

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
        HttpSession session = request.getSession(true);
        String logout = request.getParameter("logout");
        String login = request.getParameter("login");
        if(login!=null){
        try {
            RegisterUserBean obj = new RegisterUserBean();
            String uname = request.getParameter("UserName");
            String pass = request.getParameter("Password");
            if(uname.equals("Admin") && pass.equals("admin1234")){
                session.setAttribute("Admin", uname);
                System.out.println("CURRENTLY LOGIN USER " +uname);
                response.sendRedirect("WebContent/Admin.jsp");
            }
            else{
                obj.setUserName(uname);
                obj.setPassword(pass);
            obj = RegisterUserDAO.Login(obj);
            if(obj.isValid())
            {
                session.setAttribute("CurrentUser",obj);
                System.out.println("CURRENTLY LOGIN USER " +obj.getRegisterUserID());
                response.sendRedirect("WebContent/Home.jsp");
            }
            else{
                response.sendRedirect("WebContent/Login.jsp");
            }
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
//        if(logout!=null){
//             HttpSession session = request.getSession();
//             if(session!=null){
//                 session.invalidate();
//             System.out.println("CHALLLLLLLLLLLLL JKAAAAAAAAAAAAAAAAAAA");
//             response.sendRedirect("WebContent/Login.jsp");
//             }
//        }
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
