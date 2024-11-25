package model.dao;

import model.domain.Club;

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
                club.setMemberCount(rs.getInt("memberCount"));
                // memberList와 hashtags는 추가적인 파싱 로직이 필요할 수 있음
                club.setDescription(rs.getString("description"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
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
                club.setMemberCount(rs.getInt("memberCount"));
                club.setDescription(rs.getString("description"));
                club.setThumbnail(rs.getString("thumbnail"));
                club.setMaxMembers(rs.getInt("maxMembers"));
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
        String insertQuery = "INSERT INTO Club (clubId, clubName, memberCount, description, thumbnail, maxMembers) " +
                "VALUES (?, ?, ?, ?, ?, ?)";
        jdbcUtil.setSql(insertQuery);
        Object[] param = new Object[]{
                club.getClubId(), club.getClubName(), club.getMemberCount(),
                club.getDescription(), club.getThumbnail(), club.getMaxMembers()
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
        String updateQuery = "UPDATE Club SET clubName = ?, memberCount = ?, description = ?, thumbnail = ?, maxMembers = ? WHERE clubId = ?";
        jdbcUtil.setSql(updateQuery);
        Object[] param = new Object[]{
                club.getClubName(), club.getMemberCount(),
                club.getDescription(), club.getThumbnail(),
                club.getMaxMembers(), club.getClubId()
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
}
