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
import java.util.Properties;
import java.util.Properties;    


/**
 *
 * @author YOGESHKUMAR MEHTA
 */
public class InsertSellOrRentPropertyDAO {
    
    static Connection currentcon = null;
    static int SellOrRentPropertyID;
    
    public static sellorrentpropertyBean InsertBasicDetails(sellorrentpropertyBean bean){
        int RegisterUserId = bean.getRegisterUserID();
        int UserTypeInternalCode = bean.getUserTypeInternalCode();
        int ListPropertyForID = bean.getListPropertyForID();
        int PropertyTypeInternalCode = bean.getPropertyTypeInternalCode();
        int PropertiesBelongsToTypeID = bean.getPropertiesBelongsToTypeID();
        boolean isDeleted = false;
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        Date date = new Date();  
        String CreatedDateTime = formatter.format(date);  
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = currentcon.prepareStatement("insert into tblsellorrentproperty(RegisterUserId,UserTypeInternalCode,ListPropertyForID,PropertyTypeInternalCode,PropertiesBelongsToTypeID,isDeleted,CreatedBySystemUserID,CreatedDateTime) values (?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            
        ps.setInt(1, RegisterUserId);  
        ps.setInt(2, UserTypeInternalCode);
        ps.setInt(3, ListPropertyForID);
        ps.setInt(4, PropertyTypeInternalCode);
        ps.setInt(5, PropertiesBelongsToTypeID);
        ps.setBoolean(6, isDeleted);
        ps.setInt(7, RegisterUserId);
        ps.setString(8, CreatedDateTime);
        
        ps.executeUpdate();
        ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                SellOrRentPropertyID = rs.getInt(1);
                System.out.println("Inserted Property record's ID: " + SellOrRentPropertyID);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return bean;
    }  
    
    public static void InsertLocationDetails(propertylocationBean pob){
        String City = pob.getCity();
        String State = pob.getState();
        String ProjectName = pob.getProjectName();
        String Address = pob.getAddress();
        int RegisterUserId = pob.getRegisterUserID();
        int IsHideAddress = 0;
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        Date date = new Date();  
        String CreatedDateTime = formatter.format(date);  
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = currentcon.prepareStatement("insert into tblpropertylocation(RegisterUserID,City,State,Address,ProjectName,IsHideAddress,CreatedBySystemUserID,CreatedDateTime) values (?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            
        ps.setInt(1, RegisterUserId);  
        ps.setString(2, City);
        ps.setString(3, State);
        ps.setString(4, Address);
        ps.setString(5, ProjectName);
        ps.setInt(6, IsHideAddress);
        ps.setInt(7, RegisterUserId);
        ps.setString(8, CreatedDateTime);
        
        ps.executeUpdate();
        int PropertyLocationID = 0;
        ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                PropertyLocationID = rs.getInt(1);
                System.out.println("Inserted Property location ID: " + PropertyLocationID);
                UpadateSellOrRentProperty(PropertyLocationID,RegisterUserId,1);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    } 
    
    public static void UpadateSellOrRentProperty(int ID,int RegisterUserId,int cnt){
       SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        Date date = new Date();  
        String LastModifiedDateTime = formatter.format(date);  
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = null;
            if(cnt==1){
                ps = currentcon.prepareStatement("update tblsellorrentproperty set PropertyLocationID=?,LastModifiedBySystemUserID=?,LastModifiedDateTime=? where SellOrRentPropertyID=?");
            }
            else{
                ps = currentcon.prepareStatement("update tblsellorrentproperty set PropertyDetailsID=?,LastModifiedBySystemUserID=?,LastModifiedDateTime=? where SellOrRentPropertyID=?");
            }
        ps.setInt(1, ID);  
        ps.setInt(2, RegisterUserId);
        ps.setString(3, LastModifiedDateTime);
        ps.setInt(4, SellOrRentPropertyID);
        
        int cnfr = ps.executeUpdate();
        }
        catch(Exception ex){
            ex.printStackTrace();
        } 
    }
    
    public static void InsertPropertyDetails(propertydetailsBean pd){
        
        int SuperBuildUpArea = pd.getSuperBuildUpArea();
        int AreaUnitForSuperBuildUp = pd.getAreaUnitForSuperBuildUp();
        int FloorsAllowedForConstruction = 2;
        int BuildUpArea = pd.getBuildUpArea();
        int AreaUnitForBuildUp = pd.getAreaUnitForBuildUp();
        int CarpetArea = pd.getCarpetArea();
        int AreaUnitForCarpet = pd.getAreaUnitForCarpet();
        int BedRooms = pd.getBedRooms();
        int BathRooms = pd.getBathRooms();
        int Balconies = pd.getBalconies();
        int TotalFloors = pd.getTotalFloors();
        int IsParkingAvailable = pd.getIsParkingAvailable();
        int PropertyAvailabilityInternalCode = pd.getPropertyAvailabilityInternalCode();
        int AgeOfProperty = pd.getAgeOfProperty();
        int OwnerShipInternalCode = pd.getOwnerShipInternalCode();
        double ExpectedPrice = pd.getExpectedPrice();
        int CreatedBySystemUserID = pd.getCreatedBySystemUserID();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        Date date = new Date();  
        String CreatedDateTime = formatter.format(date);
        
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = currentcon.prepareStatement("insert into tblpropertydetails(SuperBuildUpArea,AreaUnitForSuperBuildUp,FloorsAllowedForConstruction,BuildUpArea,AreaUnitForBuildUp,CarpetArea,AreaUnitForCarpet,BedRooms,BathRooms,Balconies,TotalFloors,IsParkingAvailable,PropertyAvailabilityInternalCode,AgeOfProperty,OwnerShipInternalCode,ExpectedPrice,CreatedBySystemUserID,CreatedDateTime) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            
        ps.setInt(1, SuperBuildUpArea);
        ps.setInt(2, AreaUnitForSuperBuildUp);
        ps.setInt(3, FloorsAllowedForConstruction);
        ps.setInt(4, BuildUpArea);
        ps.setInt(5, AreaUnitForBuildUp);
        ps.setInt(6, CarpetArea);
        ps.setInt(7, AreaUnitForCarpet);
        ps.setInt(8, BedRooms);
        ps.setInt(9, BathRooms);
        ps.setInt(10, Balconies);
        ps.setInt(11, TotalFloors);
        ps.setInt(12, IsParkingAvailable);
        ps.setInt(13, PropertyAvailabilityInternalCode);
        ps.setInt(14, AgeOfProperty);
        ps.setInt(15, OwnerShipInternalCode);
        ps.setDouble(16, ExpectedPrice);
        ps.setInt(17, CreatedBySystemUserID);
        ps.setString(18, CreatedDateTime);
        
        
        ps.executeUpdate();
        int PropertyDetailsID = 0;
        ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                PropertyDetailsID = rs.getInt(1);
                System.out.println("Inserted Property Details ID: " + PropertyDetailsID);
                UpadateSellOrRentProperty(PropertyDetailsID,CreatedBySystemUserID,2);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    public static void UpdatePropertyFeatures(sellorrentpropertyBean bean){
        String img1 = bean.getImage1();
        String img2 = bean.getImage2();
        String img3 = bean.getImage3();
        String amenities = bean.getAmenitiesInternalCodes();
        String des = bean.getDescription();
        int LastModifiedBySystemUserID = bean.getLastModifiedBySystemUserID();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        Date date = new Date();  
        String LastModifiedDateTime = formatter.format(date);  
        try{
            currentcon = ConnectionManager.GetConnection();
            PreparedStatement ps = null;
            
                ps = currentcon.prepareStatement("update tblsellorrentproperty set Image1=?,Image2=?,Image3=?,AmenitiesInternalCodes=?,Description=?,LastModifiedBySystemUserID=?,LastModifiedDateTime=? where SellOrRentPropertyID=?");
        ps.setString(1, img1);
        ps.setString(2, img2);
        ps.setString(3, img3);
        ps.setString(4, amenities);
        ps.setString(5, des);
        ps.setInt(6, LastModifiedBySystemUserID);
        ps.setString(7, LastModifiedDateTime);
        ps.setInt(8, SellOrRentPropertyID);
        
        int cnfr = ps.executeUpdate();
        System.out.println("FINALLY......COMPLETED");
        }
        catch(Exception ex){
            ex.printStackTrace();
        } 
        
    }
    
}

