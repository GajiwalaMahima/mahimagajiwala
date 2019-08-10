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
public class propertytypeBean {
    private int PropertyTypeInternalCode;
    private String PropertyyTypeName;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;

    public int getPropertyTypeInternalCode() {
        return PropertyTypeInternalCode;
    }

    public void setPropertyTypeInternalCode(int PropertyTypeInternalCode) {
        this.PropertyTypeInternalCode = PropertyTypeInternalCode;
    }

    public String getPropertyyTypeName() {
        return PropertyyTypeName;
    }

    public void setPropertyyTypeName(String PropertyyTypeName) {
        this.PropertyyTypeName = PropertyyTypeName;
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
