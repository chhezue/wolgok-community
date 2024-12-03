package model.dao;

import model.domain.Club;
import model.domain.Member; // Member 클래스 import 추가
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class ClubDAO {
    private JDBCUtil jdbcUtil = new JDBCUtil();

    // 전체 클럽 정보를 List로 반환하는 메소드
    public List<Club> getClubList() {
        String query = "SELECT * FROM Club ORDER BY clubId ASC";
        jdbcUtil.setSql(query);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            List<Club> list = new ArrayList<>();
            while (rs.next()) {
                Club club = new Club();
                club.setClubId(rs.getInt("clubId"));
                club.setClubName(rs.getString("clubName"));
                // memberCount는 setMembers를 통해 설정될 것임
                club.setDescription(rs.getString("description"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
                club.setCategory(rs.getString("category"));
                club.setCreatedAt(rs.getDate("createdAt") != null ? rs.getDate("createdAt").toLocalDate() : null); // 개설일 추가

                // 해시태그 추가
                String hashtags = rs.getString("hashtags");
                if (hashtags != null) {
                    club.setHashtags(List.of(hashtags.split(","))); // 문자열을 리스트로 변환
                }

                // 클럽 ID로 멤버 리스트 가져오기
                List<Member> members = getMembersByClubId(club.getClubId());
                club.setMembers(members); // setMembers 사용하여 memberCount 자동 업데이트

                list.add(club);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 클럽 정보를 clubId로 검색하는 메소드
    public Club getClubById(int clubId) {
        String query = "SELECT * FROM Club WHERE clubId = ?";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{clubId});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                Club club = new Club();
                club.setClubId(rs.getInt("clubId"));
                club.setClubName(rs.getString("clubName"));
                // memberCount는 setMembers를 통해 설정될 것임
                club.setDescription(rs.getString("description"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
                club.setCategory(rs.getString("category"));
                club.setCreatedAt(rs.getDate("createdAt") != null ? rs.getDate("createdAt").toLocalDate() : null); // 개설일 추가

                // 해시태그 추가
                String hashtags = rs.getString("hashtags");
                if (hashtags != null) {
                    club.setHashtags(List.of(hashtags.split(","))); // 문자열을 리스트로 변환
                }

                // 클럽 ID로 멤버 리스트 가져오기
                List<Member> members = getMembersByClubId(clubId);
                club.setMembers(members); // setMembers 사용하여 memberCount 자동 업데이트

                return club;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 클럽 정보를 삽입하는 메소드
    public int insertClub(Club club) {
        String insertQuery = "INSERT INTO Club (clubId, clubName, memberCount, description, thumbnail, maxMembers, category, hashtags, createdAt) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcUtil.setSql(insertQuery);
        Object[] param = new Object[]{
                club.getClubId(), club.getClubName(), club.getMemberCount(), // memberCount는 필요 없음
                club.getDescription(), club.getThumbnail(), club.getMaxMembers(),
                club.getCategory(),
                club.getHashtags() != null ? String.join(",", club.getHashtags()) : null, // 해시태그 저장
                club.getCreatedAt() // 개설일 저장
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

    // 클럽 정보를 수정하는 메소드
    public int updateClub(Club club) {
        String updateQuery = "UPDATE Club SET clubName = ?, description = ?, thumbnail = ?, maxMembers = ?, category = ?, hashtags = ?, createdAt = ? WHERE clubId = ?";
        jdbcUtil.setSql(updateQuery);
        Object[] param = new Object[]{
                club.getClubName(),
                club.getDescription(), club.getThumbnail(),
                club.getMaxMembers(), club.getCategory(),
                club.getHashtags() != null ? String.join(",", club.getHashtags()) : null,
                club.getCreatedAt(), // 개설일 업데이트
                club.getClubId()
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

    // 클럽 정보를 삭제하는 메소드
    public int deleteClub(int clubId) {
        String deleteQuery = "DELETE FROM Club WHERE clubId = ?";
        jdbcUtil.setSql(deleteQuery);
        jdbcUtil.setParameters(new Object[]{clubId});

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

    // 클럽 ID로 멤버 리스트를 가져오는 메소드
    private List<Member> getMembersByClubId(int clubId) {
        List<Member> members = new ArrayList<>();
        String query = "SELECT * FROM Member WHERE clubId = ?";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{clubId});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                Member member = new Member();
                
                // member domain 수정 완료되면 필드 설정 부분 구현
                
                members.add(member);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return members;
    }
}