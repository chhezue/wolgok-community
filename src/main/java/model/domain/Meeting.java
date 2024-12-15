package model.domain;

import java.time.LocalDateTime;

public class Meeting {
    // Fields
    private int meetingId;
    private String name;
    private String type; // "정규모임" or "번개모임"
    private LocalDateTime dateTime; // 일정 날짜, 시간
    private LocalDateTime registrationDeadline; // 신청 마감일
    private String location; // 위치
    private int participantLimit; // 참가 제한 인원
    private double participationFee; // 참가비
    private String description; // 일정 설명
    private int clubId; // 소속된 모임의 ID

    // 기본 생성자
    public Meeting() {}

    // 모든 필드를 포함하는 생성자
    public Meeting(int meetingId, String name, String type, LocalDateTime dateTime,
                   LocalDateTime registrationDeadline, String location, int participantLimit,
                   double participationFee, String description, int clubId) {
        this.meetingId = meetingId;
        this.name = name;
        this.type = type;
        this.dateTime = dateTime;
        this.registrationDeadline = registrationDeadline;
        this.location = location;
        this.participantLimit = participantLimit;
        this.participationFee = participationFee;
        this.description = description;
        this.clubId = clubId;
    }

    // Getters and Setters
    public int getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(int meetingId) {
        this.meetingId = meetingId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public LocalDateTime getRegistrationDeadline() {
        return registrationDeadline;
    }

    public void setRegistrationDeadline(LocalDateTime registrationDeadline) {
        this.registrationDeadline = registrationDeadline;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getParticipantLimit() {
        return participantLimit;
    }

    public void setParticipantLimit(int participantLimit) {
        this.participantLimit = participantLimit;
    }

    public double getParticipationFee() {
        return participationFee;
    }

    public void setParticipationFee(double participationFee) {
        this.participationFee = participationFee;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    // toString() for debugging purposes
    @Override
    public String toString() {
        return "Meeting{" +
                "meetingId=" + meetingId +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", dateTime=" + dateTime +
                ", registrationDeadline=" + registrationDeadline +
                ", location='" + location + '\'' +
                ", participantLimit=" + participantLimit +
                ", participationFee=" + participationFee +
                ", description='" + description + '\'' +
                ", clubId=" + clubId +
                '}';
    }
}
