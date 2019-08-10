/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManageData;

/**
 *
 * @author YOGESHKUMAR MEHTA
 */
public class RegisterUserBean {
    private int RegisterUserID;
    private String UserName;
    private String TemporaryPassword;
    private String Password;
    private String EmailID;
    private double MobileNumber1;
    private double MobileNumber2;
    private String Gender;
    private boolean valid;

    public int getRegisterUserID() {
        return RegisterUserID;
    }

    public void setRegisterUserID(int RegisterUserID) {
        this.RegisterUserID = RegisterUserID;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getTemporaryPassword() {
        return TemporaryPassword;
    }

    public void setTemporaryPassword(String TemporaryPassword) {
        this.TemporaryPassword = TemporaryPassword;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEmailID() {
        return EmailID;
    }

    public void setEmailID(String EmailID) {
        this.EmailID = EmailID;
    }

    public double getMobileNumber1() {
        return MobileNumber1;
    }

    public void setMobileNumber1(double MobileNumber1) {
        this.MobileNumber1 = MobileNumber1;
    }

    public double getMobileNumber2() {
        return MobileNumber2;
    }

    public void setMobileNumber2(double MobileNumber2) {
        this.MobileNumber2 = MobileNumber2;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
        
}
