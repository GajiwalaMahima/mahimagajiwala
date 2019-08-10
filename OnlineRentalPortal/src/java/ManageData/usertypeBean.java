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
public class usertypeBean {
    private int UserTypeInternalCode;
    private String UserTypeName;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;

    public int getUserTypeInternalCode() {
        return UserTypeInternalCode;
    }

    public void setUserTypeInternalCode(int UserTypeInternalCode) {
        this.UserTypeInternalCode = UserTypeInternalCode;
    }

    public String getUserTypeName() {
        return UserTypeName;
    }

    public void setUserTypeName(String UserTypeName) {
        this.UserTypeName = UserTypeName;
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
