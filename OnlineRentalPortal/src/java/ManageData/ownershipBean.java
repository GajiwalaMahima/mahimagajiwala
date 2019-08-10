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
public class ownershipBean {
    private int OwnerShipInternalCode;
    private String OwnerShip;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;

    public int getOwnerShipInternalCode() {
        return OwnerShipInternalCode;
    }

    public void setOwnerShipInternalCode(int OwnerShipInternalCode) {
        this.OwnerShipInternalCode = OwnerShipInternalCode;
    }

    public String getOwnerShip() {
        return OwnerShip;
    }

    public void setOwnerShip(String OwnerShip) {
        this.OwnerShip = OwnerShip;
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
