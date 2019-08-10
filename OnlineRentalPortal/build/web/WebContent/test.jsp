<%-- 
    Document   : test
    Created on : 28 Jun, 2019, 8:05:27 PM
    Author     : YOGESHKUMAR MEHTA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="ManageData.ConnectionManager"%>

<%! Connection currentcon = ConnectionManager.GetConnection();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select id="cmbPropertiesBelongToType" name="cmbPropertiesBelongToType" class="form-control" style="width: 300px">
                                                    <option value="-1">Property Belongs to Type</option>
                                                    <%
                                                    try{
                                                        int cmbPropertyType = Integer.parseInt(request.getParameter("cmbPropertyType"));
                                                        String query = "select * from tblpropertiesbelongstotype where PropertyTypeInternalCode="+ cmbPropertyType+" ";
                                                        Statement stmt = currentcon.createStatement();
                                                        //int propertyType = Integer.parseInt(request.get)
                                                        //stmt.setString(1, request.getParameter("cmbPropertyType"));
                                                        ResultSet rs = stmt.executeQuery(query);
                                                        while(rs.next()){
                                                            %>
                                                            <option value="<%=rs.getInt("PropertiesBelongsToTypeID")%>"><%=rs.getString("PropertiesBelongsToTypeName")%></option>
                                                            <%
                                                        }
                                                        
                                                    }
                                                    catch(Exception ex){
                                                        ex.printStackTrace();
                                                    }    
                                                    
                                                %>  
						</select>

    </body>
</html>
