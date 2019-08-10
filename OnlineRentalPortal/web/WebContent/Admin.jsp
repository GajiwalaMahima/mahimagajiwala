<%-- 
    Document   : Admin
    Created on : 1 Jul, 2019, 10:21:52 AM
    Author     : YOGESHKUMAR MEHTA
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="ManageData.ConnectionManager"%>

<%! Connection currentcon = ConnectionManager.GetConnection();%>
<%! int totuser = 0;%>
<%! int totproperty = 0;%>
<%! int totsoldproperty = 0;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="../resources/Admin/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="../resources/Admin/css/datepicker3.css" rel="stylesheet"/>
        <link href="../resources/Admin/css/styles.css" rel="stylesheet"/>

        <!--Icons-->
        <script src="../resources/Admin/js/lumino.glyphs.js"></script>

        <!--Font-->
        <link href='https://../resources/Admin/fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'/>

    </head>
    <body>
            <% if(session!=null){ if(session.getAttribute("Admin")!= null){%>
                      <form action="../LogOutServlet">
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container-fluid">
            <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Dashboard.xhtml">Home State</a>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <button name="LogOut">Log out</button>
                        </li>
                    </ul>
            </div>

        </div><!-- /.container-fluid -->
    </nav>
    </form>

        <div id="sidebar-collapse" class="col-sm-3 col-lg-3 sidebar">
		
		<div class="profile-sidebar">

			<div class="profile-userpic">
				<img src="../Upload/Admin4.jpg" class="img-responsive" alt=""/>
			</div>

			<div class="profile-usertitle">
				<div class="profile-usertitle-name">
					Admin
				</div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>
		
       	
       </div>	
		
        
	<div class="col-sm-9 col-sm-offset-3 col-lg-9 col-lg-offset-3 main">			
		<!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1  class="page-header">Dashboard</h1>
			</div>
		</div>
		
		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding">
							<svg class="glyph stroked bag"></svg>
                                                                <div>
                                                                    <form>
                                                                        <label class="profile-usertitle-name" style="color: grey">Total User</label><br>
                                                                       <%
                                                    try{
                                                        int totcount = 0;
                                                        String query = "select count(*) from tblregisteruser";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        
                                                             boolean bln = rs.next();
                                                                if(bln){
                                                                    
                                                                    totcount = rs.getInt(1);
                                                                }
                                                                else{
                                                                    totcount = 0;
                                                                }
                                                         %>
                                                        <label class="large"><%=totcount %></label>
                                                     <%   
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                                        
                                                                    </form>
                                                                </div>
<!--							<div class="text-muted">Total Users</div>-->
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<svg class="glyph stroked empty-message"></svg>
							<div>
                                                                    <form>
                                                                        <label class="profile-usertitle-name" style="color: grey">Total Property</label><br>
                                                                       <%
                                                    try{
                                                        int totcount = 0;
                                                        String query = "select count(*) from tblsellorrentproperty";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        
                                                             boolean bln = rs.next();
                                                                if(bln){
                                                                    
                                                                    totproperty = rs.getInt(1);
                                                                }
                                                                else{
                                                                    totproperty = 0;
                                                                }
                                                         %>
                                                        <label class="large"><%=totproperty %></label>
                                                     <%   
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                                        
                                                                    </form>
                                                                </div>
<!--							<div class="text-muted">Total Properties</div>-->
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-red panel-widget ">
						<div class="row no-padding">
							<svg class="glyph stroked app-window-with-content"></svg>
							<div>
                                                                    <form>
                                                                        <label class="profile-usertitle-name" style="color: grey">Sold Property</label><br>
                                                                       <%
                                                    try{
                                                        int totcount = 0;
                                                        String query = "select count(*) from tblsellorrentproperty where isDeleted=1";
                                                        Statement stmt = currentcon.createStatement();
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        
                                                             boolean bln = rs.next();
                                                                if(bln){
                                                                    
                                                                    totsoldproperty = rs.getInt(1);
                                                                }
                                                                else{
                                                                    totsoldproperty = 0;
                                                                }
                                                         %>
                                                        <label class="large"><%=totsoldproperty %></label>
                                                     <%   
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>
                                                                        
                                                                    </form>
                                                                </div>
<!--							<div class="text-muted">Total E-Mail send by admin</div>-->
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>
                
<!--                    <div class="row">

        </div>/.row-->
												
	</div>	<!--/.main-->
	<script src="../resources/Admin/js/jquery-1.11.1.min.js"></script>
	<script src="../resources/Admin/js/bootstrap.min.js"></script>
	<script src="../resources/Admin/js/chart.min.js"></script>
	<script src="../resources/Admin/js/chart-data.js"></script>
	<script src="../resources/Admin/js/easypiechart.js"></script>
	<script src="../resources/Admin/js/easypiechart-data.js"></script>
	<script src="../resources/Admin/js/bootstrap-datepicker.js"></script>
	<script src="../resources/Admin/js/custom.js"></script>
	<script>
	window.onload = function(){ 
		var chart1 = document.getElementById("line-chart").getContext("2d");
		window.myLine = new Chart(chart1).Line(lineChartData, {
			responsive : true,
			scaleLineColor: "rgba(0,0,0,.2)", 
			scaleGridLineColor: "rgba(0,0,0,.05)", 
			scaleFontColor: "#c5c7cc"
		});
	};
	</script>
        <% } else{ response.sendRedirect("Login.jsp");}}%>

    </body>
</html>
