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
public class sellorrentpropertyBean {
    private int SellOrRentPropertyID;
    private int RegisterUserID;
    private int UserTypeInternalCode;
    private int ListPropertyForID;
    private int PropertyTypeInternalCode;
    private int PropertiesBelongsToTypeID;
    private int PropertyLocationID;
    private int PropertyDetailsID;
    private String Image1;
    private String Image2;
    private String Image3;
    private String AmenitiesInternalCodes;
    private String Description;
    private boolean isDeleted;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;
    private int LastModifiedBySystemUserID;
    private String LastModifiedDateTime;

    public int getSellOrRentPropertyID() {
        return SellOrRentPropertyID;
    }

    public void setSellOrRentPropertyID(int SellOrRentPropertyID) {
        this.SellOrRentPropertyID = SellOrRentPropertyID;
    }

    public int getRegisterUserID() {
        return RegisterUserID;
    }

    public void setRegisterUserID(int RegisterUserID) {
        this.RegisterUserID = RegisterUserID;
    }

    public int getUserTypeInternalCode() {
        return UserTypeInternalCode;
    }

    public void setUserTypeInternalCode(int UserTypeInternalCode) {
        this.UserTypeInternalCode = UserTypeInternalCode;
    }

    public int getListPropertyForID() {
        return ListPropertyForID;
    }

    public void setListPropertyForID(int ListPropertyForID) {
        this.ListPropertyForID = ListPropertyForID;
    }

    public int getPropertyTypeInternalCode() {
        return PropertyTypeInternalCode;
    }

    public void setPropertyTypeInternalCode(int PropertyTypeInternalCode) {
        this.PropertyTypeInternalCode = PropertyTypeInternalCode;
    }

    public int getPropertiesBelongsToTypeID() {
        return PropertiesBelongsToTypeID;
    }

    public void setPropertiesBelongsToTypeID(int PropertiesBelongsToTypeID) {
        this.PropertiesBelongsToTypeID = PropertiesBelongsToTypeID;
    }

    public int getPropertyLocationID() {
        return PropertyLocationID;
    }

    public void setPropertyLocationID(int PropertyLocationID) {
        this.PropertyLocationID = PropertyLocationID;
    }

    public int getPropertyDetailsID() {
        return PropertyDetailsID;
    }

    public void setPropertyDetailsID(int PropertyDetailsID) {
        this.PropertyDetailsID = PropertyDetailsID;
    }

    public String getImage1() {
        return Image1;
    }

    public void setImage1(String Image1) {
        this.Image1 = Image1;
    }

    public String getImage2() {
        return Image2;
    }

    public void setImage2(String Image2) {
        this.Image2 = Image2;
    }

    public String getImage3() {
        return Image3;
    }

    public void setImage3(String Image3) {
        this.Image3 = Image3;
    }

    public String getAmenitiesInternalCodes() {
        return AmenitiesInternalCodes;
    }

    public void setAmenitiesInternalCodes(String AmenitiesInternalCodes) {
        this.AmenitiesInternalCodes = AmenitiesInternalCodes;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }
    
    public boolean isDeleted() {
        return isDeleted;
    }

    public void setisDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
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
