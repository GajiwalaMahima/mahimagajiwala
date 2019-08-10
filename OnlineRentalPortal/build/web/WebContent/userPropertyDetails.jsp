<%@page import="ManageData.RegisterUserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<% 
if(session.getAttribute("CurrentUser")== null){
    response.sendRedirect("Login.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
     <head>
    <title>HomeSpace &mdash; Colorlib Website Template</title>
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="../resources/User/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../resources/User/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/User/css/magnific-popup.css">
    <link rel="stylesheet" href="../resources/User/css/jquery-ui.css">
    <link rel="stylesheet" href="../resources/User/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../resources/User/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../resources/User/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../resources/User/css/mediaelementplayer.css">
    <link rel="stylesheet" href="../resources/User/css/animate.css">
    <link rel="stylesheet" href="../resources/User/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="../resources/User/css/fl-bigmug-line.css">
    
  
    <link rel="stylesheet" href="../resources/User/css/aos.css">

        <link rel="stylesheet" href="../resources/User/css/style.css">
                 <script language="javascript">
function editRecord(id){
    var f=document.form;
  
    f.method="post";
    f.action='PropertyDetails.jsp?id='+id;
    f.submit();
}
  function openNewWindow()
    {
    window.open("sendRequest.jsp");
    }
</script>
            </head>
   
    <body>
         <jsp:include page="header.jsp"></jsp:include>
        <form method="post" name="form">
  
             <%
                 String id=request.getParameter("id");
int no=Integer.parseInt(id.trim());
    try
    {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/dbrentalhousewebportal","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT tblsellorrentproperty.SellOrRentPropertyID,tblsellorrentproperty.AmenitiesInternalCodes, tblsellorrentproperty.Description ,tblsellorrentproperty.Image1,tblsellorrentproperty.Image2,tblsellorrentproperty.Image3,tblpropertydetails.ExpectedPrice, tblpropertylocation.State,tblpropertylocation.City,tblpropertylocation.Address,tblpropertylocation.ProjectName, tblpropertydetails.SuperBuildUpArea, tblpropertydetails.BuildUpArea,tblpropertydetails.CarpetArea,tblpropertydetails.BedRooms, tblpropertydetails.BathRooms,tblpropertydetails.Balconies, tblpropertydetails.AgeOfProperty,tblpropertytype.PropertyyTypeName,tblpropertyavailability.PropertyAvailabilityName,tblregisteruser.UserName,tblpropertydetails.CreatedDateTime, tblpropertydetails.TotalFloors from tblsellorrentproperty INNER JOIN tbllistpropertyfor ON tbllistpropertyfor.ListPropertyForID=tblsellorrentproperty.ListPropertyForID  INNER JOIN tblpropertylocation ON tblpropertylocation.PropertyLocationID=tblsellorrentproperty.PropertyLocationID INNER JOIN tblpropertydetails ON tblpropertydetails.PropertyDetailsID=tblsellorrentproperty.PropertyDetailsID INNER JOIN tblpropertytype ON tblsellorrentproperty.PropertyTypeInternalCode=tblpropertytype.PropertyTypeInternalCode INNER JOIN tblpropertyavailability ON tblpropertyavailability.PropertyAvailabilityInternalCode=tblpropertydetails.PropertyAvailabilityInternalCode INNER JOIN tblregisteruser ON tblregisteruser.RegisterUserID=tblsellorrentproperty.RegisterUserID WHERE tblsellorrentproperty.SellOrRentPropertyID='"+no+"';");
    %><table border=1 align=center style="text-align: center">
        <%while(rs.next())
        {
            int sellrentid = Integer.parseInt(rs.getString(1));
            %>
    <div class="site-blocks-cover overlay" style="background-image: url(../Upload/building4.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded">Property Details of</span>
            <h1 class="mb-2">
                <output value="<%="../"+rs.getString(19) %>"><%out.print(rs.getString(19));%></output>
            </h1>
            <h3 class="mb-2">
                <output style="color: white" value="<%="../"+rs.getString(10) %>"><%out.print(rs.getString(10));%></output>
            </h3>
            <p class="mb-5"><strong class="h2 text-success font-weight-bold"><output value="Rs. "><output style="color: white" value="<%="../"+rs.getString(10) %>"><%out.print("Rs. "+rs.getString(7));%></output>
</output></strong></p>
          </div>
        </div>
      </div>
    </div>
  
    <div class="site-section site-section-sm">
      <div class="container">
        <div class="row">
          <div class="col-lg-8" style="margin-top: -150px;">
            <div class="mb-5">
              <div class="slide-one-item home-slider owl-carousel">
                <div><img src="<%="../"+rs.getString(4) %>" alt="Image" class="img-fluid"/></div>
                <div><img src="<%="../"+rs.getString(5) %>" alt="Image" class="img-fluid"/></div>
                <div><img src="<%="../"+rs.getString(6) %>" alt="Image" class="img-fluid"/></div>
              </div>
            </div>
             
            <div class="bg-white">
                <div class="row mb-5">
                    <div class="col-md-6">
                        <h4><output class="price rounded" value="&nbsp;&nbsp; " style="color: black"><%out.print("Expected Amt: "+rs.getString(7));%> </output></h4><br></br>

                    </div>
                    <div class="col-md-6">
                    <ul class="property-specs-wrap mb-3 mb-lg-0  float-lg-right">
                        <li>
                            <h3><span class="property-specs">Super Build-Up Area:</span></h3>
                          <h4><span class="property-specs-number"><output value=""><%out.print(rs.getString(12));%></output></span></h4>
                        </li>
                        <li>
                          <span class="property-specs"></span>
                          <h4><span class="property-specs-number"><output value="" style="color: blue"><%out.print(rs.getString(20));%></output></span></h4>
                        </li>
                    </ul>
                    </div>
                </div>  
                <div class="box-content" style="width: 700px">
                    <h4 class="box-title">Property Info</h4>
                    <div id="rootwizard">
                        <div class="tab-header">
                            <div class="navbar">
                                <div class="navbar-inner">
                                    <ul>
                                        <li><a href="#tab1" data-toggle="tab">Floor Plans</a></li>
                                        <li><a href="#tab2" data-toggle="tab">Property Details</a></li>
                                        <li><a href="#tab3" data-toggle="tab">Location</a></li>
                                        <li><a href="#tab4" data-toggle="tab">Amenities</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content">
                                <div class="tab-pane" id="tab1">
                                    <div class="form-group" style="text-align: left">
                                        <label value="" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Super Build-up Area: "+rs.getString(12));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                    <div class="form-group" style="text-align: left">
                                        <label value="" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Build-up Area: "+rs.getString(13));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                    <div class="form-group" style="text-align: left">
                                        <label value="" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Carpet Area: "+rs.getString(14));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab2">
                                    <div class="form-group" style="text-align: left">
                                        <label value="Bed-Rooms:" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Bed-Rooms: "+rs.getString(15));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                    <div class="form-group" style="text-align: left">
                                        <label value="Bath-Rooms:" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Bath-Rooms: "+rs.getString(16));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                    <div class="form-group" style="text-align: left">
                                        <label value="Balconies:" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Balconies: "+rs.getString(17));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                    <div class="form-group" style="text-align: left">
                                        <label value="Total Floors:" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Total Floors: "+rs.getString(23));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
                                    <div class="form-group" style="text-align: left">
                                        <label value="Age of property:" style="font-size: medium; font-style: inherit; font-weight:bold "><%out.print("Age of property: "+rs.getString(18)+"+ years");%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="+ years" style="font-size: medium; font-style: inherit;"></label>
                                    </div>
<!--                                    <panelGroup rendered="">
                                    <div class="form-group" style="text-align: left">
                                        <selectManyCheckbox>
                                            <selectItem  noSelectionOption="true" itemDisabled="true" itemLabel="Parking Available"></selectItem>
                                        </selectManyCheckbox> 
                                    </div>
                                    </panelGroup>-->
                                </div>
                                <div class="tab-pane" id="tab3">
                                    <div class="form-group" style="text-align: left">
                                        <label value="City:" style="font-weight: bold"><%out.print("City: "+rs.getString(9));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="width: 200px" ></label>
                                    </div>

                                    <div class="form-group" style="text-align: left">
                                        <label value="State:" style="font-weight: bold"><%out.print("State: "+rs.getString(9));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="width: 200px" ></label>
                                    </div>

                                    <div class="form-group" style="text-align: left">
                                        <label value="Project Name:" style="font-weight: bold"><%out.print("Project Name: "+rs.getString(11));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" style="width: 200px" ></label>
                                    </div>

                                    <div class="form-group" style="text-align: left">
                                        <label value="Address:" style="font-weight: bold"><%out.print("Address: "+rs.getString(10));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" ></label>
                                    </div>
                                </div>
                                        
                                <div class="tab-pane" id="tab4">
                                                                 <%
String amn=rs.getString(2);
String[] a = amn.split(",");

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbrentalhousewebportal", "root", "root");
for (int i = 1; i <= a.length; i++) {
String query = "select * from tblamenitiesmaster where AmenitiesInternalCode='"+a[i]+"'";
Statement st1 = conn.createStatement();
ResultSet rs1 = st1.executeQuery(query);
while(rs1.next()){
%>
                                 <div class="form-group" style="text-align: left">
                                        <label value="Address:" style="font-weight: bold"><%out.print(i+") "+rs1.getString(2));%></label>
                                        <output value="&#160;"></output>
                                        <output value="&#160;"></output>
                                        <label value="" ></label>
                                    </div>
                                <%
}
}
}
catch(Exception e){}
%>
                                </div>
                                <ul class="pager wizard">
                                    <li class="previous"><a href="javascript:void(0)">Previous</a></li>
                                    <li class="next"><a href="javascript:void(0)">Next</a></li>
                                </ul>
                        </div>
                    </div>
                </div>
                
<!--                <div class="Properties-details-section sidebar-widget">
                <div class="properties-comments mb-40">
                     Comments section start 
                    <div class="comments-section">
                         Main Title 2 
                        <div class="main-title-2">
                            <h1><span>Comments </span> Section</h1>
                        </div>
                       
                        <ul class="comments">
                           
                                <div class="comment">
                                 
                                    <div class="comment-content">
                                        <div class="comment-meta">
                                            <div class="comment-meta-author">
                                                <label value=""></label>
                                            </div>
                                            <div class="comment-meta-date">
                                                <span class="hidden-xs"><label value=""></label></span>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            
                        </ul>   
                   
                    </div>
                </div>
                </div>-->
            </div>
              
          </div>
<!--            <div class="Properties-details-section sidebar-widget">
            <div class="bg-white widget border rounded">
              <h3 class="h4 text-black widget-title mb-3">Dealer Details</h3>
                <div class="form-group">
                    <img src="../Upload/User.jpg" alt="Image" class="img-fluid" style="height: 200px; width: 200px;"/>
                </div>
                <div class="form-group">
                  <label>Dealer Name</label>
                  <br></br>
                  <label value="<%=rs.getString(21) %>" style="color: blue" ><%out.print(rs.getString(21));%></label>
                </div>
                <div class="form-group">
                  <label>Property Posted-Date</label>
                  <br></br>
                  <label value="<%=rs.getString(22) %>" style="color: blue" ><%out.print(rs.getString(22));%></label>
                </div>
                <div class="form-group">
                    <outputLink class="btn btn-primary" target = "_blank" onclick="openNewWindow();">View Phone Number</outputLink>
                </div>
            </div>

            <div class="bg-white widget border rounded">
              <h3 class="h4 text-black widget-title mb-3">Description of property</h3>
              <p><label value="<%=rs.getString(3) %>"><%out.print(rs.getString(3));%></label>  </p>
            </div>

          </div>-->
            
<!--            
        <div class="box-content" style="width: 750px">
          <h2 class="h4 text-black widget-title mb-3">Give your feedback</h2>
            <div class="form-group">
              <select style="color: blue;" value="">
                    <option itemLabel="&nbsp;&nbsp; Poor &nbsp;&nbsp;&nbsp;&nbsp;" itemValue="1">Poor</option>
                    <option itemLabel="&nbsp;&nbsp; Below Average &nbsp;&nbsp;&nbsp;&nbsp;" itemValue="2">Below</option>
                    <option itemLabel="&nbsp;&nbsp; Normal &nbsp;&nbsp;&nbsp;&nbsp;" itemValue="3">Normal</option>
                    <option itemLabel="&nbsp;&nbsp; Good &nbsp;&nbsp;&nbsp;&nbsp;" itemValue="4">Good</option>
                    <option itemLabel="&nbsp;&nbsp; Excellent &nbsp;&nbsp;&nbsp;&nbsp;" itemValue="5">Excellent</option>
                </select >
<label class="radio-inline">
    <input type="radio" value="1" name="optradio" checked>Poor &nbsp;&nbsp;&nbsp;
    </label>
    <label class="radio-inline">
        <input type="radio" value="2" name="optradio">Below Average&nbsp;&nbsp;&nbsp;
    </label>
    <label class="radio-inline">
        <input type="radio" value="3" name="optradio">Normal&nbsp;&nbsp;&nbsp;
    </label>
 <label class="radio-inline">
     <input type="radio" value="4" name="optradio">Good&nbsp;&nbsp;&nbsp;
    </label>
 <label class="radio-inline">
     <input type="radio" value="5" name="optradio">Excellent&nbsp;&nbsp;&nbsp;
    </label>
            </div>
            <div class="form-group">
                <input type="hidden" name="sellrentid" value="<%=rs.getString(1) %>" ></input>
              <label>Description</label>
              <textarea name="description" required="required" class="form-control" a:placseholder="Description.." value=""></textarea>
            </div>
            <div class="form-group">
                <button onclick="document.forms[0].action = 'sendFeedback.jsp'; return true;" type="submit" id="btnFeedback" class="btn btn-primary" value="Add Feedback" action="">Add Feedback</button>
            </div>
        </div>-->
        </div>
    </div>
          
                    <%
        }%>
        </table><br>
    <%}
    catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>
    <div class="site-section site-section-sm bg-light">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12">
            <div class="site-section-title">
              <h2>New Arrival</h2>
            </div>
          </div>
        </div>
         
        <div class="row mb-5">
             <%
           int regid=0;      
              try
    {
             if(session.getAttribute("CurrentUser")!= null){
                 RegisterUserBean currentuser = (RegisterUserBean)(session.getAttribute("CurrentUser"));
               String user =currentuser.getUserName().toString();
               Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/dbrentalhousewebportal","root","root");
        Statement st=con.createStatement();
         ResultSet rs1=st.executeQuery("select RegisterUserID from tblregisteruser where UserName='"+user+"' ");
         while(rs1.next()){
                  regid = Integer.parseInt(rs1.getString(1));
                
             }
               
              }
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/dbrentalhousewebportal","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT tblsellorrentproperty.SellOrRentPropertyID,tblsellorrentproperty.Image1,tblpropertydetails.ExpectedPrice, tblpropertylocation.State,tblpropertylocation.City,tblpropertylocation.Address, tblpropertydetails.SuperBuildUpArea, tblpropertydetails.BedRooms, tblpropertydetails.BathRooms,tblpropertydetails.Balconies from tblsellorrentproperty INNER JOIN tbllistpropertyfor ON tbllistpropertyfor.ListPropertyForID=tblsellorrentproperty.ListPropertyForID  INNER JOIN tblpropertylocation ON tblpropertylocation.PropertyLocationID=tblsellorrentproperty.PropertyLocationID INNER JOIN tblpropertydetails ON tblpropertydetails.PropertyDetailsID=tblsellorrentproperty.PropertyDetailsID INNER JOIN tblregisteruser ON tblregisteruser.RegisterUserID=tblsellorrentproperty.RegisterUserID where tblregisteruser.RegisterUserID!='"+regid+"' and tblsellorrentproperty.isDeleted='0';");
    %><table border=1 align=center style="text-align: center">
        <%while(rs.next())
        {
            
            %>
          <div class="col-md-6 col-lg-4 mb-4">
              <a onclick="editRecord(<%=rs.getString(1)%>);" class="prop-entry d-block">
              <figure>
                  <img src="<%="../"+rs.getString(2) %>" alt="Image" width="350px" height="250px"  >
              </figure>
              <div class="prop-text">
                <div class="inner">
                  <span class="price rounded">&#8377;<%out.print(rs.getString(3));%></span>
                  <h3 class="title"><%out.print(rs.getString(4));%></h3>
                  <h3 class="title"><%out.print(rs.getString(5));%></h3>
                  <p class="location"><h2 class="title"><%out.print(rs.getString(6));%></h2></p>
                </div>
                <div class="prop-more-info">
                  <div class="inner d-flex">
                    <div class="col">
                      <span>Area:</span>
                      <strong><%out.print(rs.getString(7));%><sup>2</sup></strong>
                    </div>
                    <div class="col">
                      <span>Beds:</span>
                      <strong><%out.print(rs.getString(8));%></strong>
                    </div>
                    <div class="col">
                      <span>Baths:</span>
                      <strong><%out.print(rs.getString(9));%></strong>
                    </div>
                    <div class="col">
                      <span>Balconies:</span>
                      <strong><%out.print(rs.getString(10));%></strong>
                    </div>
                  </div>
                </div>
              </div>
            </a>
          </div>
          
                    <%
        }%>
        </table><br>
    <%}
    catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>
    </div>
     
      </div>
    </div>
    </div>
       <jsp:include page="footer.jsp"></jsp:include>
    </form>
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
</html>
    