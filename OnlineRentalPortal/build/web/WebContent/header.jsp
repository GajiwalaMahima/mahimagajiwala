<%-- 
    Document   : header
    Created on : 18 Jun, 2019, 12:39:10 PM
    Author     : YOGESHKUMAR MEHTA
--%>

<%@page import="ManageData.RegisterUserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    <div class="border-bottom bg-white top-bar">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-6 col-md-6">
            <p class="mb-0">
              <a href="#" class="mr-3"><span class="text-black fl-bigmug-line-phone351"></span> <span class="d-none d-md-inline-block ml-2">+91 9106163609</span></a>
              <a href="#"><span class="text-black fl-bigmug-line-email64"></span> <span class="d-none d-md-inline-block ml-2">info@homespace.com</span></span></a>
            </p>  
          </div>
         
          <div class="col-6 col-md-6 text-center">
              <form action="../LogOutServlet">
              <% if(session.getAttribute("CurrentUser")!= null){ RegisterUserBean currentuser = (RegisterUserBean)(session.getAttribute("CurrentUser")); %>
              <span class="d-none d-md-inline-block ml-2"><%= currentuser.getUserName() %></span>
              <%}%>
              &nbsp;&nbsp;<button name="logout" class="btn btn-primary">Log Out</button>
               </form>
            </div>
           <div class="col-6 col-md-6 text-center">
              
            </div>
        </div>
      </div>
      
    </div>
    <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-8 col-md-8 col-lg-4">
                <h1 class=""><a href="Home.jsp" class="h5 text-uppercase text-black"><strong><h1>Home State<span class="text-danger">.</span></h1></strong></a></h1>
            </div>
            <div class="col-4 col-md-4 col-lg-8">
              <nav class="site-navigation text-right text-md-right" role="navigation">

                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li>
                        <a href="InsertSellOrRentProperty.jsp">Sell/Rent Property</a>
                    </li>
                     <li class="has-children">
                        <a href="#">User</a>
                        <ul class="dropdown">
                            <li><a href="userProperties.jsp">User Properties</a></li>
                            <li><a href="ChangePassword.jsp">Change Password</a></li>
                        </ul>
                    </li>
                    <li><a href="../User/AboutUs.xhtml">About</a></li>
                    <li><a href="../User/ContactUs.xhtml">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>

    </div>