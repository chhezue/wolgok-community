package model.domain;

public class MemberRole {
    private int memberId;
    private String role;

    // Getter and Setter methods
    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}