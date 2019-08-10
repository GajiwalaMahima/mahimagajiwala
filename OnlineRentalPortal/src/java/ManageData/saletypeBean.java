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
public class saletypeBean {
    private int SaleTypeIntenalCode;
    private String SaleTypeName;
    private int CreatedBySystemUserID;
    private String CreatedDateTime;

    public int getSaleTypeIntenalCode() {
        return SaleTypeIntenalCode;
    }

    public void setSaleTypeIntenalCode(int SaleTypeIntenalCode) {
        this.SaleTypeIntenalCode = SaleTypeIntenalCode;
    }

    public String getSaleTypeName() {
        return SaleTypeName;
    }

    public void setSaleTypeName(String SaleTypeName) {
        this.SaleTypeName = SaleTypeName;
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
