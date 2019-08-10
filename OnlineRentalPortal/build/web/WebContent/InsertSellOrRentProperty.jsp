<%-- 
    Document   : InsertSellOrRentProperty
    Created on : 21 Jun, 2019, 4:39:43 PM
    Author     : YOGESHKUMAR MEHTA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="ManageData.ConnectionManager"%>

<%! Connection currentcon = ConnectionManager.GetConnection();%>
<% 
if(session.getAttribute("CurrentUser")== null){
    response.sendRedirect("Login.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
    <title>HomeState</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"/> 
    <link rel="stylesheet" href="../resources/User/fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="../resources/User/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../resources/User/css/magnific-popup.css"/>
    <link rel="stylesheet" href="../resources/User/css/jquery-ui.css"/>
    <link rel="stylesheet" href="../resources/User/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="../resources/User/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="../resources/User/css/bootstrap-datepicker.css"/>
    <link rel="stylesheet" href="../resources/User/css/mediaelementplayer.css"/>
    <link rel="stylesheet" href="../resources/User/css/animate.css"/>
    <link rel="stylesheet" href="../resources/User/fonts/flaticon/font/flaticon.css"/>
    <link rel="stylesheet" href="../resources/User/css/fl-bigmug-line.css"/>
    
  
    <link rel="stylesheet" href="../resources/User/css/aos.css"/>

    <link rel="stylesheet" href="../resources/User/css/style.css"/>
    
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Main Styles -->
    <link rel="stylesheet" href="../resources/User/assets/styles/style.min.css"/>

    <!-- mCustomScrollbar -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css"/>

    <!-- Waves Effect -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/waves/waves.min.css"/>

    <!-- Dropify -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/dropify/css/dropify.min.css"/>

    <!-- Sweet Alert -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/sweet-alert/sweetalert.css"/>

    <!-- Form Wizard -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/form-wizard/prettify.css"/>

    <!-- Color Picker -->
    <link rel="stylesheet" href="../resources/User/assets/color-switcher/color-switcher.min.css"/>
    <link rel="stylesheet" href="../resources/User/style.css" />

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="../resources/ListProperty/css/style.css "/>
    <link rel="stylesheet" type="text/css" id="style_sheet" href="../resources/ListProperty/css/skins/default.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
    <body>

<jsp:include page="header.jsp"></jsp:include>

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../Upload/building6.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <h1 class="mb-2">Sell/Rent Your Property</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="site-section site-section-sm bg-light">
        <div class="container">
            <div class="col-md-6 col-xs-12">
                <div class="box-content" style="width: 1100px">
                    <h4 class="box-title">Sell/Rent your property with 4 simple steps. </h4>
                        <!-- /.box-title -->
                        <div id="rootwizard-progress">
                            <div class="tab-header">
                                <div class="navbar">
                                    <div class="navbar-inner">
                                        <ul>
                                            <li><a href="#tab-progress-1" data-toggle="tab">Basic Details</a></li>
                                            <li><a href="#tab-progress-2" data-toggle="tab">Location</a></li>
                                            <li><a href="#tab-progress-3" data-toggle="tab">Property Details</a></li>
                                            <li><a href="#tab-progress-4" data-toggle="tab">Features</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div id="bar" class="progress">
                                    <div class="progress-bar active progress-bar-success progress-bar-striped bar"></div>
                                </div>
                                <div class="tab-pane" id="tab-progress-1">
                                    <form enctype="multipart/form-data" method="post" action="../InsertSellOrRentPropertyServlet">
                                       <div class="form-group">
                                            <label style="font-weight:bold">You are:</label>
                                            <select id="cmbUserType" name="cmbUserType" class="form-control" style="width: 200px" required >
                                                    <option value="-1" selected disabled value="">User Type</option>
                                                <%
                                                    try{
                                                        String query = "select * from tblusertype";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("UserTypeInternalCode")%>"
                                                                     <%
                                                                        if(request.getParameter("cmbUserType")!=null)
                                                                        {
                                                                            if(rs.getInt("UserTypeInternalCode")==Integer.parseInt(request.getParameter("cmbUserType")))
                                                                            {
                                                                                out.print("selected");
                                                                            }
                                                                        }
                                                                        %>
                                                                    ><%=rs.getString("UserTypeName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
						</select>
                                       </div>

                                       <div class="form-group">
                                            <label style="font-weight: bold">List property for:</label>
                                                <select id="cmbListPropertyFor" name="cmbListPropertyFor" class="form-control" style="width: 200px" required>
                                                        <option value="-1">List Property For</option>
                                                        
                                                      <%
                                                    try{
                                  
                                                        String query = "select * from tbllistpropertyfor";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("ListPropertyForID")%>"
                                                                    <%
                                                                        if(request.getParameter("cmbListPropertyFor")!=null)
                                                                        {
                                                                            if(rs.getInt("ListPropertyForID")==Integer.parseInt(request.getParameter("cmbListPropertyFor")))
                                                                            {
                                                                                out.print("selected");
                                                                            }
                                                                        }
                                                                        %>
                                                                                                                                 
                                                                        
                                                                ><%=rs.getString("ListPropertyFor")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>  
						</select>
                                       </div>

                                       <div class="form-group">
                                            <label style="font-weight: bold">Property Type:</label>
                                            <select id="cmbPropertyType" name="cmbPropertyType" class="form-control" style="width: 200px" required>
							<option value="-1">Property Type</option>
                                                        <%
                                                    try{
                                                        String query = "select * from tblpropertytype";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("PropertyTypeInternalCode")%>"><%=rs.getString("PropertyyTypeName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>  
						</select>
                                       </div>

                                       <div class="form-group">
                                            <label style="font-weight: bold">Property Belongs to Type:</label>
                                           <select id="cmbPropertiesBelongToType" name="cmbPropertiesBelongToType" class="form-control" style="width: 200px" required>
							<option value="-1">Properties Belong To Type</option>
                                           </select>
                                       </div>
                                        
				<button name = "BasicDetails" class="btn btn-primary btn-sm waves-effect waves-light">Let's get started!</button>
                                    </form>
                                </div>
                                
                                <div class="tab-pane" id="tab-progress-2">
                                    <div class="site-blocks-cover" style="background-image: url('../resources/User/images/Map.jpg'); text-align: center" data-aos="fade">
                                        <form enctype="multipart/form-data" method="post" action="../InsertSellOrRentPropertyServlet">
                                        <div style="height: 480px; width: 900px; display: inline-block; background-color: white">
                                          
                                        <div class="form-group" style="text-align: left">&nbsp;&nbsp;
                                                <label style="font-weight: bold">City:</label>
                                                    <input type="text" name="txtCity" class="form-control" style="width: 200px" placeholder="City"></input>
                                        </div>
                                            
                                        <div class="form-group" style="text-align: left">&nbsp;&nbsp;
                                            <label style="font-weight: bold">State:</label>
						<input type="text" name="txtState" class="form-control" style="width: 200px" placeholder="State"></input>
                                       </div>
                                        
                                        <div class="form-group" style="text-align: left">&nbsp;&nbsp;
                                            <label style="font-weight: bold">Project Name:</label>
						<input type="text" name="txtProjectName" class="form-control" style="width: 200px" placeholder="Project Name.."></input>
                                        </div>
                                            
                                        <div class="form-group" style="text-align: left">&nbsp;&nbsp;
                                            <label style="font-weight: bold">Address:</label>
						<textarea name="txtAddress" class="form-control" style="width: 500px" placeholder="Address.."></textarea>
                                        </div>
                                        
					<button name="LocationDetails" style="align-items: flex-start" class="btn btn-primary btn-sm waves-effect waves-light" onClick="">Submit</button>
<!--                                        <label style="font-weight: bold; display:none" id="lblLocation" name="lblLocation" >City Details added successfully.Please click on Next to proceed further.</label>-->
                                        </div>
                                        </form>
                                    </div>
                                </div>
                                
                                <div class="tab-pane" id="tab-progress-3">
                                    <form enctype="multipart/form-data" method="post" action="../InsertSellOrRentPropertyServlet">
                                    <div class="card-content">
                                        <label style="color: #000000; font-size: larger; font-weight: bold">Give us some information about the configuration of the property.</label>
                                            <ul class="list-inline margin-bottom-0">
                                                <li class="form-group">
                                                    <label style="font-weight: bold">Plot Area:</label>
							<input type="text" name="txtSuperBuildUpArea" class="form-control" style="width: 200px" placeholder="0"></input>
						</li>
                                            <li class="form-group">
						<label style="font-weight: bold">Area Unit:</label>    
                                                    <select id="cmbAreaUnitForSuperBuildUp" name="cmbAreaUnitForSuperBuildUp" class="form-control" style="width: 150px" >
                                                        <option value="-1">Area Unit</option>
                                                <%
                                                    try{
                                                        String query = "select * from tblareaunit";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("AreaUniInternalCode")%>"><%=rs.getString("AreaUnitName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                    </select>
                                            </li>
                                        </ul>
                                        
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
                                                <label style="font-weight: bold">Build Up Area:</label>
                                                    <input type="text" name="txtBuildUpArea" class="form-control" style="width: 200px" placeholder="Build Up Area.."></input>
                                            </li>
                                            <li class="form-group">
                                                <label style="font-weight: bold">Area Unit:</label>    
                                                    <select id="cmbBuildUpArea" name="cmbBuildUpArea" class="form-control" style="width: 150px" >
							<option value="-1">Area Unit</option>
                                                <%
                                                    try{
                                                        String query = "select * from tblareaunit";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("AreaUniInternalCode")%>"><%=rs.getString("AreaUnitName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                    </select>
                                            </li>
                                            
                                            <li class="form-group">
                                                <label style="font-weight: bold">Carpet Area:</label>
                                                    <input type="text" name="txtCarpetArea" class="form-control" style="width: 200px" placeholder="Carpet Area.."></input>
                                            </li>
                                            <li class="form-group">
						<label style="font-weight: bold">Area Unit:</label>    
                                                    <select id="cmbCarpetArea" name="cmbCarpetArea" class="form-control" style="width: 150px" >
							<option value="-1">Area Unit</option>
                                                <%
                                                    try{
                                                        String query = "select * from tblareaunit";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("AreaUniInternalCode")%>"><%=rs.getString("AreaUnitName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                    </select>
                                            </li>
                                        </ul>
                                        
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
						<label style="font-weight: bold">Bedrooms:</label>   
                                                    <select id="cmbBedrooms" name="cmbBedrooms" class="form-control" style="width: 150px" >
							<option value="0">Bedrooms</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
                                                    </select>
                                            </li>
                                            <li class="form-group">
						<label style="font-weight: bold">Bathrooms:</label>   
						    <select id="cmbBathrooms" name="cmbBathrooms" class="form-control" style="width: 150px" >
							<option value="-1">Bathrooms</option>
                                                        <option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
                                                    </select>
                                            </li>
                                            
                                            <li class="form-group">
						<label style="font-weight: bold">Balconies:</label>   
                                                    <select id="cmbBalconie" name="cmbBalconie" class="form-control" style="width: 150px" >
							<option value="-1">Balconie</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="5">5</option>
							<option value="5">5</option>
							<option value="6">6</option>
                                                    </select>
                                            </li>
                                        </ul>
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
						<label style="font-weight: bold">Total Floors:</label>   
                                                    <select id="cmbTotalFloors" name="cmbTotalFloors" class="form-control" style="width: 150px" >
							<option value="-1">Total Floors</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
                                                    </select>
                                            </li>
                                        </ul>
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
						<label style="font-weight: bold">Is Parking Available:</label>   
                                                    <select id="IsParkingAvailable" name="IsParkingAvailable" class="form-control" style="width: 150px" >
							<option value="-1">Parking Availability</option>
							<option value="1">true</option>
							<option value="0">false</option>
                                                    </select>
                                            </li>
                                            <li class="form-group">
						<label style="font-weight: bold">Property Availability:</label>   
                                                    <select id="cmbPropertyAvailability" name="cmbPropertyAvailability" class="form-control" style="width: 150px" >
							<option value="-1">Property Availability</option>
                                                <%
                                                    try{
                                                        String query = "select * from tblpropertyavailability";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("PropertyAvailabilityInternalCode")%>"><%=rs.getString("PropertyAvailabilityName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                    </select>
                                            </li>
                                        </ul>
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
						<label style="font-weight: bold">Ownership:</label>   
						    <select id="cmbOwnership" name="cmbOwnership" class="form-control" style="width: 150px" >
							<option value="-1">Ownership</option>
                                                <%
                                                    try{
                                                        String query = "select * from tblownership";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("OwnerShipInternalCode")%>"><%=rs.getString("OwnerShip")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                    </select>
                                            </li>
                                            <li class="form-group">
						<label style="font-weight: bold">Age of property:</label>   
                                                    <select id="cmbAgeOfProperty" name="cmbAgeOfProperty" class="form-control" style="width: 150px" >
							<option value="-1">Age of property</option>
							<option value="1">0-1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">10+</option>
        					    </select>
                                            </li>
                                        </ul>
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
						<label style="font-weight: bold">Expected Price(Rs):</label>
                                                    <input type="text" name="txtExpectedPrice" class="form-control" style="width: 200px" placeholder="Expected Price.."></input>
                                            </li>
                                            <li class="form-group">
						<button name="PropertyDetails" style="align-items: flex-start" class="btn btn-primary btn-sm waves-effect waves-light" onClick="">Done</button>												
                                            </li>
                                        </ul>
                                    </div>
                                    </form>
                                </div>
                                                    
                                <div class="tab-pane" id="tab-progress-4">
                                    <form enctype="multipart/form-data" method="post" action="../InsertSellOrRentPropertyServlet">
                                    <div class="card-content">
                                        <label style="color: #000000; font-size: larger; font-weight: bold">Add some photos and other features.</label>
                                          <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
                                                <input type="file" name="file1" class="dropify" required=""/>
                                            </li>
                                            <li class="form-group">
                                                <input type="file" name="file2" class="dropify" required=""/>
                                            </li>
                                            <li class="form-group">
                                                <input type="file" name="file3" class="dropify" required=""/>
                                            </li>  
                                        </ul> 
										
					<label style="color: #000000; font-size: larger; font-weight: bold">Amenities:</label>
                                        <ul class="list-inline margin-bottom-0">
                                            <li>
						 <%
                                                    try{
                                                        String query = "select * from  tblamenitiesmaster";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <input type="checkBox" name ="amenities" value="<%=rs.getInt("AmenitiesInternalCode")%>">&nbsp;<%=rs.getString("AmenitiesName")%><br>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                           </li>
                                        </ul>
					<label style="color: #000000; font-size: larger; font-weight: bold">Description:</label>
                                        <ul class="list-inline margin-bottom-0">
                                            <li>
						<textarea id="txtDescription" name="txtDescription" class="form-control" style="width: 500px" placeholder="Description"></textarea>
                                            </li>
                                        </ul>
                                        <ul class="list-inline margin-bottom-0">
                                            <li class="form-group">
                                                <button style="align-items: flex-start" class="btn btn-primary btn-sm waves-effect waves-light" onClick="">Save</button>												
                                            </li>  
                                        </ul>
                                    </div>
                                    </form>
                                </div>
                                <ul class="pager wizard">
                                    <li class="previous"><a id="previous" href="javascript:void(0)">Previous</a></li>
                                    <li class="next"><a id="next" href="javascript:void(0)">Next</a></li>
                                </ul>
                            </div>
                        </div>
                </div>
<!-- /.box-content -->
            </div>
        </div>
    </div> 
<jsp:include page="footer.jsp"></jsp:include>

<script src="../resources/User/js/jquery-3.3.1.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery-migrate-3.0.1.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery-ui.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/popper.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/bootstrap.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/owl.carousel.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/mediaelement-and-player.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery.stellar.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery.countdown.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery.magnific-popup.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/bootstrap-datepicker.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/aos.js" type="97d85ac250320df2daca8946-text/javascript"></script>

<script src="../resources/User/js/main.js" type="97d85ac250320df2daca8946-text/javascript"></script>

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="97d85ac250320df2daca8946-text/javascript"></script>
<script type="97d85ac250320df2daca8946-text/javascript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<script src="../resources/User/ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="97d85ac250320df2daca8946-|49" defer=""></script>

<script src="../resources/User/assets/scripts/jquery.min.js"></script>
<script src="../resources/User/assets/scripts/modernizr.min.js"></script>
<script src="../resources/User/assets/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="../resources/User/assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="../resources/User/assets/plugin/nprogress/nprogress.js"></script>
<script src="../resources/User/assets/plugin/sweet-alert/sweetalert.min.js"></script>
<script src="../resources/User/assets/plugin/waves/waves.min.js"></script>
<!-- Full Screen Plugin -->
<script src="../resources/User/assets/plugin/fullscreen/jquery.fullscreen-min.js"></script>

<!-- Dropify -->
<script src="../resources/User/assets/plugin/dropify/js/dropify.min.js"></script>
<script src="../resources/User/assets/scripts/fileUpload.demo.min.js"></script>

<!-- Form Wizard -->
<script src="../resources/User/assets/plugin/form-wizard/prettify.js"></script>
<script src="../resources/User/assets/plugin/form-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="../resources/User/assets/plugin/jquery-validation/jquery.validate.min.js"></script>
<script src="../resources/User/assets/scripts/form.wizard.init.min.js"></script>

<script src="../resources/User/assets/scripts/main.min.js"></script>
<script src="../resources/User/assets/color-switcher/color-switcher.min.js"></script>

    </body>
<script>
    $(document).ready(function () {
        $("#cmbPropertyType").on("change", function(){
            var cmbPropertyType = $("#cmbPropertyType").val();
                $.ajax({
                    url: "test.jsp",
                    data: {cmbPropertyType: cmbPropertyType},
                    method: "POST",
                    success : function(data)
                    {
                        $("#cmbPropertiesBelongToType").html(data);
                    }
                });
        });
    });
</script>
<script>
    
    </script>
</html>

