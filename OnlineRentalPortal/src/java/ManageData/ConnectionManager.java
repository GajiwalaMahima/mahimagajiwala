/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManageData;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author YOGESHKUMAR MEHTA
 */
public class ConnectionManager {
    static Connection con;
    static String url;
    
    public static Connection GetConnection(){
        try
        {
            url ="jdbc:mysql://localhost:3306/dbrentalhousewebportal";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, "root","root");
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return con;
    }
    
}
