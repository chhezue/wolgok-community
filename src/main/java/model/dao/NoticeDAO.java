package model.dao;

import model.domain.Club;
import model.domain.Notice;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoticeDAO {
    private JDBCUtil jdbcUtil = new JDBCUtil(); // JDBCUtil 초기화
    private int clubId; // 클럽 ID

    // 생성자
    //안녕하세요
    public NoticeDAO(int clubId) {
        this.clubId = clubId; // 생성 시 클럽 ID 초기화
    }

    // 공지사항 생성
    public int createNotice(Notice notice) {
        String sql = "INSERT INTO Notice (clubId, title, content, pinned, createdAt) VALUES (?, ?, ?, ?, ?)";
        jdbcUtil.setSql(sql);
        Object[] param = new Object[]{
                clubId, // 클럽 ID 사용
                notice.getTitle(),
                notice.getContent(),
                notice.isPinned(),
                Date.valueOf(notice.getCreatedAt().toLocalDate())
        };
        jdbcUtil.setParameters(param);

        try {
            return jdbcUtil.executeUpdate(); // 생성된 공지사항 ID 반환
        } catch (Exception ex) {
            jdbcUtil.rollback();
            ex.printStackTrace();
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return 0;
    }

    // 공지사항 상세 정보 조회
    public Notice findNotice(int noticeId) {
        String sql = "SELECT * FROM Notice WHERE noticeId = ?";
        jdbcUtil.setSql(sql);
        jdbcUtil.setParameters(new Object[]{noticeId});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                Notice notice = new Notice();
                notice.setNoticeId(rs.getInt("noticeId"));
                notice.setClub(new Club());
                notice.setTitle(rs.getString("title"));
                notice.setContent(rs.getString("content"));
                notice.setPinned(rs.getBoolean("pinned"));
                notice.setCreatedAt(rs.getDate("createdAt").toLocalDate().atStartOfDay());
                return notice;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 특정 클럽의 모든 공지사항 목록 조회
    public List<Notice> listAllNotice() {
        List<Notice> notices = new ArrayList<>();
        String sql = "SELECT * FROM Notice WHERE clubId = ?";
        jdbcUtil.setSql(sql);
        jdbcUtil.setParameters(new Object[]{clubId}); // 클럽 ID 사용

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                Notice notice = new Notice();
                notice.setNoticeId(rs.getInt("noticeId"));
                notice.setClub(new Club());
                notice.setTitle(rs.getString("title"));
                notice.setContent(rs.getString("content"));
                notice.setPinned(rs.getBoolean("pinned"));
                notice.setCreatedAt(rs.getDate("createdAt").toLocalDate().atStartOfDay());
                notices.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return notices;
    }

    // 공지사항 수정
    public int updateNotice(int noticeId, Notice updateNotice) {
        String sql = "UPDATE Notice SET clubId = ?, title = ?, content = ?, pinned = ?, createdAt = ? WHERE noticeId = ?";
        jdbcUtil.setSql(sql);
        Object[] param = new Object[]{
                clubId, // 클럽 ID 사용
                updateNotice.getTitle(),
                updateNotice.getContent(),
                updateNotice.isPinned(),
                Date.valueOf(updateNotice.getCreatedAt().toLocalDate()),
                noticeId
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

    // 공지사항 삭제
    public int deleteNotice(int noticeId) {
        String sql = "DELETE FROM Notice WHERE noticeId = ?";
        jdbcUtil.setSql(sql);
        jdbcUtil.setParameters(new Object[]{noticeId});

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
