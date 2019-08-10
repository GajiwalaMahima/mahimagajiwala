/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManageData;

/**
 *
 * @author mahima
 */
public class propertylocationBean {
    private int PropertyLocationID;
    private int RegisterUserID;
    private String City;
    private String State;
    private String Address;
    private String ProjectName;
    private int IsHideAddress;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;
    private int LastModifiedBySystemUserID;
    private String LastModifiedDateTime;

    public int getPropertyLocationID() {
        return PropertyLocationID;
    }

    public void setPropertyLocationID(int PropertyLocationID) {
        this.PropertyLocationID = PropertyLocationID;
    }

    public int getRegisterUserID() {
        return RegisterUserID;
    }

    public void setRegisterUserID(int RegisterUserID) {
        this.RegisterUserID = RegisterUserID;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getProjectName() {
        return ProjectName;
    }

    public void setProjectName(String ProjectName) {
        this.ProjectName = ProjectName;
    }

    public int getIsHideAddress() {
        return IsHideAddress;
    }

    public void setIsHideAddress(int IsHideAddress) {
        this.IsHideAddress = IsHideAddress;
    }

    public int getCreatedBySystemUserID() {
        return CreatedBySystemUserID;
    }

    public void setCreatedBySystemUserID(int CreatedBySystemUserID) {
        this.CreatedBySystemUserID = CreatedBySystemUserID;
    }

    public String getCreatedDateTime() {
        return CreatedDateTime;
    }

    public void setCreatedDateTime(String CreatedDateTime) {
        this.CreatedDateTime = CreatedDateTime;
    }

    public int getLastModifiedBySystemUserID() {
        return LastModifiedBySystemUserID;
    }

    public void setLastModifiedBySystemUserID(int LastModifiedBySystemUserID) {
        this.LastModifiedBySystemUserID = LastModifiedBySystemUserID;
    }

    public String getLastModifiedDateTime() {
        return LastModifiedDateTime;
    }

    public void setLastModifiedDateTime(String LastModifiedDateTime) {
        this.LastModifiedDateTime = LastModifiedDateTime;
    }
    
    
    
    
}
