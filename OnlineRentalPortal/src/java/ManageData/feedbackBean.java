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
public class feedbackBean {
    private int FeedbackID;
    private int SellOrRentPropertyID;
    private int RegisterUserID;
    private int Rating;
    private String Description;
    private String FeedbackDateTime;

    public int getFeedbackID() {
        return FeedbackID;
    }

    public void setFeedbackID(int FeedbackID) {
        this.FeedbackID = FeedbackID;
    }

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

    public int getRating() {
        return Rating;
    }

    public void setRating(int Rating) {
        this.Rating = Rating;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getFeedbackDateTime() {
        return FeedbackDateTime;
    }

    public void setFeedbackDateTime(String FeedbackDateTime) {
        this.FeedbackDateTime = FeedbackDateTime;
    }
    
    
}
