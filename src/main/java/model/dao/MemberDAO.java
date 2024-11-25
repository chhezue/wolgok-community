package model.dao;

import model.domain.Member;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class MemberDAO {
    private JDBCUtil jdbcUtil = null;

    public MemberDAO() {
        jdbcUtil = new JDBCUtil();
    }

    // 사용자 등록
    public int create(Member member) {
        int result = 0;
        String insertQuery = "INSERT INTO Member (memberId, memberName, password, nickname, email, profileImage, registrationDate, interests) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        Object[] params = new Object[]{
                member.getMemberId(),
                member.getMemberName(),
                member.getPassword(),
                member.getNickname(),
                member.getEmail(),
                member.getProfileImage(),
                new java.sql.Date(member.getRegistrationDate().getTime()),
                String.join(",", member.getInterests())
        };

        jdbcUtil.setSql(insertQuery);
        jdbcUtil.setParameters(params);

        try {
            result = jdbcUtil.executeUpdate();
            System.out.println(member.getMemberId() + " 사용자 정보가 삽입되었습니다.");
        } catch (SQLException ex) {
            System.out.println("입력 오류 발생");
            if (ex.getErrorCode() == 1) {
                System.out.println("동일한 사용자 정보가 이미 존재합니다.");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }

        return result;
    }

    // memberId로 사용자 검색
    public Member findUser(int memberId) {
        String selectQuery = "SELECT * FROM Member WHERE memberId = ?";
        Member member = null;

        jdbcUtil.setSql(selectQuery);
        jdbcUtil.setParameters(new Object[]{memberId});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                member = new Member();
                member.setMemberId(rs.getInt("memberId"));
                member.setMemberName(rs.getString("memberName"));
                member.setPassword(rs.getString("password"));
                member.setNickname(rs.getString("nickname"));
                member.setEmail(rs.getString("email"));
                member.setProfileImage(rs.getString("profileImage"));
                member.setRegistrationDate(rs.getDate("registrationDate"));
                String interests = rs.getString("interests");
                member.setInterests(interests != null ? List.of(interests.split(",")) : new ArrayList<>());
            }
        } catch (SQLException e) {
            System.out.println("사용자 검색 오류 발생");
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }

        return member;
    }

    // 사용자 리스트 조회
    public List<Member> findUserList() {
        String selectQuery = "SELECT * FROM Member";
        List<Member> members = new ArrayList<>();

        jdbcUtil.setSql(selectQuery);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                Member member = new Member();
                member.setMemberId(rs.getInt("memberId"));
                member.setMemberName(rs.getString("memberName"));
                member.setPassword(rs.getString("password"));
                member.setNickname(rs.getString("nickname"));
                member.setEmail(rs.getString("email"));
                member.setProfileImage(rs.getString("profileImage"));
                member.setRegistrationDate(rs.getDate("registrationDate"));
                String interests = rs.getString("interests");
                member.setInterests(interests != null ? List.of(interests.split(",")) : new ArrayList<>());
                members.add(member);
            }
        } catch (SQLException e) {
            System.out.println("사용자 리스트 조회 오류 발생");
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }

        return members;
    }

    // 사용자 삭제
    public int delete(int memberId) {
        int result = 0;
        String deleteQuery = "DELETE FROM Member WHERE memberId = ?";

        jdbcUtil.setSql(deleteQuery);
        jdbcUtil.setParameters(new Object[]{memberId});

        try {
            result = jdbcUtil.executeUpdate();
            System.out.println(memberId + " 사용자 정보가 삭제되었습니다.");
        } catch (Exception e) {
            System.out.println("사용자 삭제 오류 발생");
            e.printStackTrace();
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }

        return result;
    }
}