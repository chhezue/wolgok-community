package model.domain;

import java.time.LocalDateTime;
import java.util.List;

public class Member {
    private int memberId;
    private String memberName;
    private String nickname;
    private String phone;
    private String email;
    private String password;
    private String bio; // 회원 소개
    private String website; // 개인 소셜 웹사이트 URL
    private String profileImageUrl; // 프로필 이미지 URL
    private LocalDateTime createdAt; // 가입 날짜 및 시간
    private List<Integer> joinedClubIds; // 이 회원이 소속된 클럽의 ID 리스트
    private List<Integer> createdClubIds; // 이 회원이 개설한 클럽의 ID 리스트

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }
    
    public String getNickname() {
        return nickname;
    }
    
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }

    public void setProfileImageUrl(String profileImageUrl) {
        this.profileImageUrl = profileImageUrl;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public List<Integer> getCreatedClubIds() {
        return createdClubIds;
    }

    public void setCreatedClubIds(List<Integer> createdClubIds) {
        this.createdClubIds = createdClubIds;
    }

    public List<Integer> getJoinedClubIds() {
        return joinedClubIds;
    }

    public void setJoinedClubIds(List<Integer> joinedClubIds) {
        this.joinedClubIds = joinedClubIds;
    }
}