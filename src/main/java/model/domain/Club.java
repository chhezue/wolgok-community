package model.domain;

import java.time.LocalDate;
import java.util.List;

public class Club {
    private int clubId;
    private String clubName;
    private String description;   // 모임 설명
    private String thumbnail;      // 대표 이미지 url
    private List<String> hashtags; // 해시태그 (최대 2개)
    private int maxMembers;        // 최대 참여 인원
    private LocalDate createdAt;   // 개설일
    private String category;        // 실시간 인기, 신규모임 등 정보 저장
    private List<Member> members;   // 일반 멤버 리스트
    private Member leader;          // 모임장 정보
    private int memberCount;

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public List<String> getHashtags() {
        return hashtags;
    }

    public void setHashtags(List<String> hashtags) {
        this.hashtags = hashtags;
    }

    public int getMaxMembers() {
        return maxMembers;
    }

    public void setMaxMembers(int maxMembers) {
        this.maxMembers = maxMembers;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<Member> getMembers() {
        return members;
    }

    public void setMembers(List<Member> members) {
        this.members = members;
        if (members != null) {
            this.memberCount = members.size(); // 멤버 수를 업데이트
        } else {
            this.memberCount = 0; // 멤버 리스트가 null인 경우 0으로 설정
        }
    }

    public Member getLeader() {
        return leader;
    }

    public void setLeader(Member leader) {
        this.leader = leader;
    }

    public int getMemberCount() {
        return memberCount;
    }
}
