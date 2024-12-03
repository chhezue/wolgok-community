package model.dao;

import model.domain.Meeting;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

class MeetingDAO {
    private JDBCUtil jdbcUtil = null;

    public MeetingDAO() {
        jdbcUtil = new JDBCUtil(); // JDBC 연결 및 쿼리 유틸리티
    }

    // 1. 일정 생성
    public int create(Meeting meeting) {
        String insertQuery = "INSERT INTO Meeting (name, type, dateTime, registrationDeadline, location, participantLimit, participationFee, description, clubId) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        Object[] params = new Object[]{
                meeting.getName(),
                meeting.getType(),
                Timestamp.valueOf(meeting.getDateTime()),
                Timestamp.valueOf(meeting.getRegistrationDeadline()),
                meeting.getLocation(),
                meeting.getParticipantLimit(),
                meeting.getParticipationFee(),
                meeting.getDescription(),
                meeting.getClub().getClubId()
        };

        jdbcUtil.setSql(insertQuery);
        jdbcUtil.setParameters(params);

        try {
            return jdbcUtil.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL 실행 중 오류 발생: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("기타 오류 발생: " + e.getMessage());
        } finally {
            jdbcUtil.close();
        }
        return 0;
    }

    // 2. 일정 삭제
    public int delete(int meetingId) {
        String deleteQuery = "DELETE FROM Meeting WHERE meetingId = ?";

        jdbcUtil.setSql(deleteQuery);
        jdbcUtil.setParameters(new Object[]{meetingId});

        try {
            return jdbcUtil.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("기타 오류 발생: " + e.getMessage());
        }
        finally {
            jdbcUtil.close();
        }
        return 0;
    }

    // 3. 일정 수정
    public int update(Meeting meeting) {
        String updateQuery = "UPDATE Meeting SET name = ?, type = ?, dateTime = ?, registrationDeadline = ?, location = ?, participantLimit = ?, participationFee = ?, description = ? " +
                "WHERE meetingId = ?";

        Object[] params = new Object[]{
                meeting.getName(),
                meeting.getType(),
                Timestamp.valueOf(meeting.getDateTime()),
                Timestamp.valueOf(meeting.getRegistrationDeadline()),
                meeting.getLocation(),
                meeting.getParticipantLimit(),
                meeting.getParticipationFee(),
                meeting.getDescription(),
                meeting.getMeetingId()
        };

        jdbcUtil.setSql(updateQuery);
        jdbcUtil.setParameters(params);

        try {
            return jdbcUtil.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("기타 오류 발생: " + e.getMessage());
        }
        finally {
            jdbcUtil.close();
        }
        return 0;
    }

    // 4. 일정 조회 (ID 기준)
    public Meeting findById(int meetingId) {
        String selectQuery = "SELECT * FROM Meeting WHERE meetingId = ?";
        jdbcUtil.setSql(selectQuery);
        jdbcUtil.setParameters(new Object[]{meetingId});

        Meeting meeting = null;

        try (ResultSet rs = jdbcUtil.executeQuery()) {
            if (rs.next()) {
                meeting = new Meeting();
                meeting.setMeetingId(rs.getInt("meetingId"));
                meeting.setName(rs.getString("name"));
                meeting.setType(rs.getString("type"));
                meeting.setDateTime(rs.getTimestamp("dateTime").toLocalDateTime());
                meeting.setRegistrationDeadline(rs.getTimestamp("registrationDeadline").toLocalDateTime());
                meeting.setLocation(rs.getString("location"));
                meeting.setParticipantLimit(rs.getInt("participantLimit"));
                meeting.setParticipationFee(rs.getDouble("participationFee"));
                meeting.setDescription(rs.getString("description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }

        return meeting;
    }

    // 5. 일정 목록 조회 (clubId 기준)
    public List<Meeting> findMeetingsByClubId(int clubId) {
        String selectQuery = "SELECT * FROM Meeting WHERE clubId = ? ORDER BY dateTime ASC";
        jdbcUtil.setSql(selectQuery);
        jdbcUtil.setParameters(new Object[]{clubId});

        List<Meeting> meetings = new ArrayList<>();

        try (ResultSet rs = jdbcUtil.executeQuery()) {
            while (rs.next()) {
                Meeting meeting = new Meeting();
                meeting.setMeetingId(rs.getInt("meetingId"));
                meeting.setName(rs.getString("name"));
                meeting.setType(rs.getString("type"));
                meeting.setDateTime(rs.getTimestamp("dateTime").toLocalDateTime());
                meeting.setRegistrationDeadline(rs.getTimestamp("registrationDeadline").toLocalDateTime());
                meeting.setLocation(rs.getString("location"));
                meeting.setParticipantLimit(rs.getInt("participantLimit"));
                meeting.setParticipationFee(rs.getDouble("participationFee"));
                meeting.setDescription(rs.getString("description"));
                meetings.add(meeting);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }

        return meetings;
    }
}
