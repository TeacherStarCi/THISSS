package Repository.Register;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class RegisterDTO implements Serializable {
    private String registerID;

    public String getRegisterID() {
        return registerID;
    }

    public void setRegisterID(String registerID) {
        this.registerID = registerID;
    }

    public RegisterDTO(String registerID, String skinType, List<String> skinProblems, String guestFirstName, String guestLastName, String phoneNumber, String timeZone, Date contactDate) {
        this.registerID = registerID;
        this.skinType = skinType;
        this.skinProblems = skinProblems;
        this.guestFirstName = guestFirstName;
        this.guestLastName = guestLastName;
        this.phoneNumber = phoneNumber;
        this.timeZone = timeZone;
        this.contactDate = contactDate;
    }
    private String skinType;
    private List<String> skinProblems;
    private String guestFirstName;
    private String guestLastName;
    private String phoneNumber;
    private String timeZone;
    private Date contactDate;

    public String getSkinType() {
        return skinType;
    }

    @Override
    public String toString() {
        return "RegisterDTO{" + "skinType=" + skinType + ", skinProblems=" + skinProblems.size() + ", guestFirstName=" + guestFirstName + ", guestLastName=" + guestLastName + ", phoneNumber=" + phoneNumber + ", timeZone=" + timeZone + ", contactDate=" + contactDate + '}';
    }
    
    public void setSkinType(String skinType) {
        this.skinType = skinType;
    }

    public List<String> getSkinProblems() {
        return skinProblems;
    }

    public void setSkinProblems(List<String> skinProblems) {
        this.skinProblems = skinProblems;
    }

    public String getGuestFirstName() {
        return guestFirstName;
    }

    public void setGuestFirstName(String guestFirstName) {
        this.guestFirstName = guestFirstName;
    }

    public String getGuestLastName() {
        return guestLastName;
    }

    public void setGuestLastName(String guestLastName) {
        this.guestLastName = guestLastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getTimeZone() {
        return timeZone;
    }

    public void setTimeZone(String timeZone) {
        this.timeZone = timeZone;
    }

    public Date getContactDate() {
        return contactDate;
    }

    public void setContactDate(Date contactDate) {
        this.contactDate = contactDate;
    }
      
}
