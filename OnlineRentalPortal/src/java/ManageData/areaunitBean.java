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
public class areaunitBean {
    private  int AreaUniInternalCode;
    private String AreaUnitName;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;

    public int getAreaUniInternalCode() {
        return AreaUniInternalCode;
    }

    public void setAreaUniInternalCode(int AreaUniInternalCode) {
        this.AreaUniInternalCode = AreaUniInternalCode;
    }

    public String getAreaUnitName() {
        return AreaUnitName;
    }

    public void setAreaUnitName(String AreaUnitName) {
        this.AreaUnitName = AreaUnitName;
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
