import model.dao.*;
import model.domain.Club;
import model.domain.Notice;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoticeDAO {
    private Connection conn;
    private MemberDAO memberDAO;
    private ClubDAO clubDAO;

    public NoticeDAO(Connection conn) {
        this.conn = conn;
        this.memberDAO = new MemberDAO(conn); // MemberDAO 초기화
        this.clubDAO = new ClubDAO(conn); // ClubDAO 초기화
    }

    // 공지사항 생성
    public int createNotice(Notice notice) throws SQLException {
        // 테이블 이름을 Notice로 수정
        String sql = "INSERT INTO Notice (clubId, title, content, pinned, createDate) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, notice.getClub().getClubId()); // Club의 ID 가져오기
            pstmt.setString(2, notice.getTitle());
            pstmt.setString(3, notice.getContent());
            pstmt.setBoolean(4, notice.isPinned());
            pstmt.setDate(5, Date.valueOf(notice.getCreatedAt().toLocalDate())); // LocalDateTime을 Date로 변환
            pstmt.executeUpdate();

            // 생성된 공지사항 ID 반환
            try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                } else {
                    throw new SQLException("Creating notice failed, no ID obtained.");
                }
            }
        }
    }

    // 공지사항 조회
    public Notice findNotice(int noticeId) throws SQLException {
        String sql = "SELECT * FROM Notice WHERE noticeId = ?"; // 테이블 이름 수정
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, noticeId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    Notice notice = new Notice();
                    notice.setNoticeId(rs.getInt("noticeId")); // 컬럼 이름 수정
                    notice.setClub(new Club(rs.getInt("clubId"))); // Club 객체 생성
                    notice.setTitle(rs.getString("title"));
                    notice.setContent(rs.getString("content"));
                    notice.setPinned(rs.getBoolean("pinned"));
                    notice.setCreatedAt(rs.getDate("createDate").toLocalDate().atStartOfDay()); // DATE를 LocalDateTime으로 변환
                    return notice;
                }
            }
        }
        return null; // 공지사항이 없으면 null 반환
    }

    // 특정 클럽의 모든 공지사항 목록 조회
    public List<Notice> listAllNotice(int clubId) throws SQLException {
        List<Notice> notices = new ArrayList<>();
        String sql = "SELECT * FROM Notice WHERE clubId = ?"; // 테이블 이름 수정
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, clubId);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    Notice notice = new Notice();
                    notice.setNoticeId(rs.getInt("noticeId")); // 컬럼 이름 수정
                    notice.setClub(new Club(rs.getInt("clubId"))); // Club 객체 생성
                    notice.setTitle(rs.getString("title"));
                    notice.setContent(rs.getString("content"));
                    notice.setPinned(rs.getBoolean("pinned"));
                    notice.setCreatedAt(rs.getDate("createDate").toLocalDate().atStartOfDay()); // DATE를 LocalDateTime으로 변환
                    notices.add(notice);
                }
            }
        }
        return notices;
    }

    // 공지사항 수정
    public int updateNotice(int noticeId, Notice updateNotice) throws SQLException {
        // 테이블 이름 수정 및 column 이름 수정
        String sql = "UPDATE Notice SET clubId = ?, title = ?, content = ?, pinned = ?, createDate = ? WHERE noticeId = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, updateNotice.getClub().getClubId()); // Club의 ID 가져오기
            pstmt.setString(2, updateNotice.getTitle());
            pstmt.setString(3, updateNotice.getContent());
            pstmt.setBoolean(4, updateNotice.isPinned());
            pstmt.setDate(5, Date.valueOf(updateNotice.getCreatedAt().toLocalDate())); // LocalDateTime을 Date로 변환
            pstmt.setInt(6, noticeId);
            return pstmt.executeUpdate(); // 수정된 행 수 반환
        }
    }

    // 공지사항 삭제
    public int deleteNotice(int noticeId) throws SQLException {
        String sql = "DELETE FROM Notice WHERE noticeId = ?"; // 테이블 이름 수정
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, noticeId);
            return pstmt.executeUpdate(); // 삭제된 행 수 반환
        }
    }

    // 공지사항 상단 고정
    public int pinNotice(int noticeId) throws SQLException {
        String sql = "UPDATE Notice SET pinned = TRUE WHERE noticeId = ?"; // 테이블 이름 수정
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, noticeId);
            return pstmt.executeUpdate(); // 수정된 행 수 반환
        }
    }
}