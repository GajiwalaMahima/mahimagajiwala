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
public class amenitiesmasterBean {
    private int AmenitiesInternalCode ;
    private String AmenitiesName;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;

    public int getAmenitiesInternalCode() {
        return AmenitiesInternalCode;
    }

    public void setAmenitiesInternalCode(int AmenitiesInternalCode) {
        this.AmenitiesInternalCode = AmenitiesInternalCode;
    }

    public String getAmenitiesName() {
        return AmenitiesName;
    }

    public void setAmenitiesName(String AmenitiesName) {
        this.AmenitiesName = AmenitiesName;
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
    
    
}
