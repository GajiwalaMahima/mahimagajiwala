<?xml version='1.0' encoding='UTF-8' ?>
<% 
if(session.getAttribute("CurrentUser")== null){
    response.sendRedirect("Login.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
    </head>
    <body>
        <form>
            <% 
                if (session.getAttribute("PropertyId") != null) {
            // String parseStr = ((String) session.getAttribute("PropertyId"));
            // int id = Integer.parseInt(parseStr);
             
         }
            %>
            <label value="Note: If you are interested to buy this property, then you have to fill-up following form and our team send this information to the property owner through Email and the property owner will contact you through your contact number." style="color: black; font-size: large">Note: If you are interested to buy this property, then you have to fill-up following form and our team send this information to the property owner through Email and the property owner will contact you through your contact number.</label><br></br><br></br>
            <label value="Note: Please fill in your details to be shared with this dealer only." style="color: black; font-size: large">Note: Please fill in your details to be shared with this dealer only.</label><br></br><br></br>
            <div align="center">
            <label value="BASIC INFORMATION" style="color: black; font-size: large"></label><br></br>
            </div>
            <table>
                <tr>
                    <td style="width: 100px;"></td>
                    <td style="width: 400px;">
                        Are you a property dealer
                    </td>
                    <td style="width: 500px;">
                         <input type="radio" name="dealer" value="Yes"> Yes<br>
  <input type="radio" name="dealer" value="No"> No<br>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;"></td>
                    <td style="width: 400px;">
                        Name
                    </td>
                    <td style="width: 500px;">
                        <input name="name" type="text" style="width: 300px;" a:placeholder="Full Name" value=""></input>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;"></td>
                    <td style="width: 400px;">
                        Contact Number
                    </td>
                    <td style="width: 500px;">
                        <input name="contact" style="width: 300px;" a:placeholder="Contact Number" value=""></input>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;"></td>
                    <td style="width: 400px;">
                        Email-ID
                    </td>
                    <td style="width: 500px;">
                        <input name="email" style="width: 300px;" a:placeholder="example@domain.com" value=""></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td style="width: 500px;">
                        <input type="submit" value="SEND MAIL" onclick="document.forms[0].action = 'sendMail.jsp'; return true;" action=""></input>
                        <input type="submit" value="Cancel" onclick="javascript: window.close();"></input>
                    </td>
                </tr>
            </table>
           
        </form>
    </body>
</html>
