package model.domain;

import java.time.LocalDateTime;

public class Meeting {
    private int meetingId;
    private String name;
    private String type;
    private LocalDateTime dateTime;
    private LocalDateTime registrationDeadline;
    private String location;
    private int participantLimit;
    private double participationFee;
    private String description;
    private Club club;

    // 기본 생성자
    public Meeting() {
    }

    // 모든 필드를 포함하는 생성자
    public Meeting(int meetingId, String name, String type, LocalDateTime dateTime, LocalDateTime registrationDeadline,
                   String location, int participantLimit, double participationFee, String description, Club club) {
        this.meetingId = meetingId;
        this.name = name;
        this.type = type;
        this.dateTime = dateTime;
        this.registrationDeadline = registrationDeadline;
        this.location = location;
        this.participantLimit = participantLimit;
        this.participationFee = participationFee;
        this.description = description;
        this.club = club;
    }

    // Getter 및 Setter 메서드
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

    public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }
}
