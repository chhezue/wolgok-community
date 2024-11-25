package model.domain;

import java.util.Date;
import java.util.List;

public class Member {
    private int memberId;
    private String memberName;
    private String password;
    private String email;
    private String nickname;
    private Date registrationDate;
    private String profileImage;
    private List<String> interests;
    private List<Club> joinedClubs;

    // Getter and Setter methods
    public int getmemberId() {
        return memberId;
    }

    public void setmemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getmemberName() {
        return memberName;
    }

    public void setmemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public List<String> getInterests() {
        return interests;
    }

    public void setInterests(List<String> interests) {
        this.interests = interests;
    }

    public List<Club> getJoinedClubs() {
        return joinedClubs;
    }

    public void setJoinedClubs(List<Club> joinedClubs) {
        this.joinedClubs = joinedClubs;
    }
}