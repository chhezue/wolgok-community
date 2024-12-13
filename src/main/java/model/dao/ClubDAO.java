package model.dao;

import model.domain.Club;
import model.domain.Community;
import model.domain.Member; // Member 클래스 import 추가

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class ClubDAO {
    private JDBCUtil jdbcUtil = new JDBCUtil();

    // 클럽 생성: CreateClubController
    // leader 저장 어떻게 해야 하는지, category 저장 어떻게 해야 하는지 구현
    public int insertClub(Club club) {
        String insertQuery = "INSERT INTO Club (clubName, description, thumbnail, maxMembers, createdAt, hashtags) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcUtil.setSql(insertQuery);
        Object[] param = new Object[]{
                club.getClubName(), club.getDescription(), club.getThumbnail(), club.getMaxMembers(), club.getCreatedAt(),
                club.getHashtags() != null ? String.join(",", club.getHashtags()) : null, // 해시태그 저장
        };
        jdbcUtil.setParameters(param);

        try {
            return jdbcUtil.executeUpdate();
        } catch (Exception ex) {
            jdbcUtil.rollback();
            ex.printStackTrace();
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return 0;
    }

    // 클럽 수정: UpdateClubController
    // 모임 설명, 썸네일, 최대 인원, 해시태그만 수정 가능
    public int updateClub(Club club) {
        String updateQuery = "UPDATE Club SET description = ?, thumbnail = ?, maxMembers = ?, hashtags = ? WHERE clubId = ?";
        jdbcUtil.setSql(updateQuery);
        Object[] param = new Object[]{
                club.getDescription(), club.getThumbnail(), club.getMaxMembers(),
                club.getHashtags() != null ? String.join(",", club.getHashtags()) : null, // 해시태그 저장
                club.getClubId() // 클럽 ID
        };
        jdbcUtil.setParameters(param);

        try {
            return jdbcUtil.executeUpdate();
        } catch (Exception ex) {
            jdbcUtil.rollback();
            ex.printStackTrace();
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return 0;
    }

    // 클럽 삭제: DeleteClubController
    public int deleteClub(int clubId) {
        String deleteQuery = "DELETE FROM Club WHERE clubId = ?";
        jdbcUtil.setSql(deleteQuery);
        Object[] param = new Object[]{clubId}; // 클럽 ID
        jdbcUtil.setParameters(param);

        try {
            return jdbcUtil.executeUpdate();
        } catch (Exception ex) {
            jdbcUtil.rollback();
            ex.printStackTrace();
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return 0;
    }

    // 전체 클럽 리스트 반환: ListClubController
    // 리더 설정 부분 빠져 있음.
    public List<Club> getClubList() throws SQLException {
        String sql = "SELECT * FROM Club ORDER BY clubId ASC";
        jdbcUtil.setSqlAndParameters(sql, null);

        try {
            ResultSet rs = jdbcUtil.executeQuery();			// query 실행
            List<Club> clubList = new ArrayList<Club>();	// Community들의 리스트 생성
            while (rs.next()) {
                Club club = new Club();
                club.setClubId(rs.getInt("clubId"));
                club.setClubName(rs.getString("clubName"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
                club.setMemberCount(rs.getInt("memberCount"));
                club.setCreatedAt(rs.getDate("createdAt").toLocalDate());

                // 해시태그 추가
                String hashtags = rs.getString("hashtags");
                if (hashtags != null) {
                    club.setHashtags(List.of(hashtags.split(","))); // 문자열을 리스트로 변환
                }

                // 리더 정보 가져오기
                // Member leader = getLeaderByClubId(club.getClubId());
                // club.setLeader(leader); // 리더 설정

                clubList.add(club); // List에 Club 객체 저장
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();		// resource 반환
        }
        return null;
    }

    // 클럽 내 멤버 리스트 반환: MembersInClubController
    public List<Member> getMembersByClubId(int clubId) {
        List<Member> members = new ArrayList<>();
        String query = "SELECT * FROM Member WHERE clubId = ?";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{clubId});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                Member member = new Member(); // 새로운 Member 객체 생성
                member.setMemberId(rs.getInt("memberId"));
                member.setMemberName(rs.getString("memberName"));
                member.setNickname(rs.getString("nickname"));
                member.setPhone(rs.getString("phone"));
                member.setEmail(rs.getString("email"));
                member.setPassword(rs.getString("password"));
                member.setBio(rs.getString("bio"));
                member.setWebsite(rs.getString("website"));
                member.setProfileImageUrl(rs.getString("profileImageUrl"));
                member.setCreatedAt(rs.getTimestamp("createdAt") != null ? rs.getTimestamp("createdAt").toLocalDateTime() : null);

                members.add(member);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return members;
    }

    // 해시태그, 최대 인원을 이용하여 클럽 검색: findClubsController
    // 표시되는 항목: 클럽 이름, 썸네일, 설명, 개설일, 현재 멤버, 최대 멤버
    public List<Club> findClubs(String interest, int maxMembers) throws SQLException {
        String sql = "SELECT * FROM Club WHERE maxMembers >= ?";

        // 해시태그가 주어졌다면 추가 조건을 붙임
        if (interest != null && !interest.isEmpty()) {
            sql += " AND hashtags LIKE ?";
        }

        sql += " ORDER BY clubId ASC"; // 정렬

        jdbcUtil.setSqlAndParameters(sql, new Object[] {maxMembers, interest != null ? "%" + interest + "%" : null});

        List<Club> clubList = new ArrayList<Club>();

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                Club club = new Club();
                club.setClubId(rs.getInt("clubId"));
                club.setClubName(rs.getString("clubName"));
                club.setDescription(rs.getString("description"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
                club.setCreatedAt(rs.getDate("createdAt").toLocalDate());
                club.setMemberCount(rs.getInt("memberCount"));

                clubList.add(club); // List에 Club 객체 저장
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close(); // resource 반환
        }

        return clubList; // 필터링된 클럽 리스트 반환
    }

    // 선택한 모임의 상세 정보를 표시: ViewClubController
    // 리더 설정 부분 빠져 있음.
    public Club showClubDetail(int clubId) throws SQLException {
        String sql = "SELECT * FROM Club WHERE clubId = ?";
        Club club = null;

        jdbcUtil.setSqlAndParameters(sql, new Object[] {clubId});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                club = new Club();
                club.setClubId(rs.getInt("clubId"));
                club.setClubName(rs.getString("clubName"));
                club.setDescription(rs.getString("description"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
                club.setCreatedAt(rs.getDate("createdAt").toLocalDate());
                club.setMemberCount(rs.getInt("memberCount"));

                // 해시태그 추가
                String hashtags = rs.getString("hashtags");
                if (hashtags != null) {
                    club.setHashtags(List.of(hashtags.split(","))); // 문자열을 리스트로 변환
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close(); // 리소스 반환
        }
        return club; // 상세 정보가 담긴 Club 객체 반환
    }
}