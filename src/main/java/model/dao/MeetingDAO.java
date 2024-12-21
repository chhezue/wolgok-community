package model.dao;

import model.domain.Meeting;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MeetingDAO {
    private JDBCUtil jdbcUtil;

    public MeetingDAO() {
        jdbcUtil = new JDBCUtil();
    }

    // 1. 일정 생성
    public int create(Meeting meeting) {
        String query = "INSERT INTO Meeting (name, type, dateTime, registrationDeadline, location, participantLimit, participationFee, description, clubId) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcUtil.setSqlAndParameters(query, new Object[]{
                meeting.getName(),
                meeting.getType(),
                Timestamp.valueOf(meeting.getDateTime()),
                Timestamp.valueOf(meeting.getRegistrationDeadline()),
                meeting.getLocation(),
                meeting.getParticipantLimit(),
                meeting.getParticipationFee(),
                meeting.getDescription(),
                meeting.getClubId()
        });

        try {
            return jdbcUtil.executeUpdate();
        } catch (SQLException e) {
            // SQL 관련 예외 처리
            e.printStackTrace();
            return 0;
        } catch (Exception e) {
            // 기타 예외 처리
            e.printStackTrace();
            return 0;
        } finally {
            jdbcUtil.close();
        }
    }


    // 2. 일정 수정
    public int update(Meeting meeting) {
        String query = "UPDATE Meeting SET name = ?, type = ?, dateTime = ?, registrationDeadline = ?, location = ?, participantLimit = ?, participationFee = ?, description = ? " +
                "WHERE meetingId = ?";
        jdbcUtil.setSqlAndParameters(query, new Object[]{
                meeting.getName(),
                meeting.getType(),
                Timestamp.valueOf(meeting.getDateTime()),
                Timestamp.valueOf(meeting.getRegistrationDeadline()),
                meeting.getLocation(),
                meeting.getParticipantLimit(),
                meeting.getParticipationFee(),
                meeting.getDescription(),
                meeting.getMeetingId()
        });

        try {
            return jdbcUtil.executeUpdate();
        } catch (SQLException e) {
            // SQL 관련 예외 처리
            e.printStackTrace();
            return 0;
        } catch (Exception e) {
            // 기타 예외 처리
            e.printStackTrace();
            return 0;
        } finally {
            jdbcUtil.close();
        }
    }


    // 3. 일정 삭제
    public int delete(int meetingId) {
        String query = "DELETE FROM Meeting WHERE meetingId = ?";
        jdbcUtil.setSqlAndParameters(query, new Object[]{meetingId});

        try {
            return jdbcUtil.executeUpdate();
        } catch (SQLException e) {
            // SQL 관련 예외 처리
            e.printStackTrace();
            return 0;
        } catch (Exception e) {
            // 기타 예외 처리
            e.printStackTrace();
            return 0;
        } finally {
            jdbcUtil.close();
        }
    }


    // 4. 일정 조회 (ID 기준)
    public Meeting findById(int meetingId) {
        String query = "SELECT * FROM Meeting WHERE meetingId = ?";
        jdbcUtil.setSqlAndParameters(query, new Object[]{meetingId});

        try (ResultSet rs = jdbcUtil.executeQuery()) {
            if (rs.next()) {
                return mapResultSetToMeeting(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 5. 일정 목록 조회 (clubId 기준)
    public List<Meeting> findAllByClubId(int clubId) {
        String query = "SELECT * FROM Meeting WHERE clubId = ? ORDER BY dateTime";
        jdbcUtil.setSqlAndParameters(query, new Object[]{clubId});
        List<Meeting> meetings = new ArrayList<>();

        try (ResultSet rs = jdbcUtil.executeQuery()) {
            while (rs.next()) {
                meetings.add(mapResultSetToMeeting(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return meetings;
    }

    // ResultSet → Meeting 변환
    private Meeting mapResultSetToMeeting(ResultSet rs) throws SQLException {
        return new Meeting(
                rs.getInt("meetingId"),
                rs.getString("name"),
                rs.getString("type"),
                rs.getTimestamp("dateTime").toLocalDateTime(),
                rs.getTimestamp("registrationDeadline").toLocalDateTime(),
                rs.getString("location"),
                rs.getInt("participantLimit"),
                rs.getDouble("participationFee"),
                rs.getString("description"),
                rs.getInt("clubId")
        );
    }
}
