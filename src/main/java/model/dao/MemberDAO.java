package model.dao;

import model.domain.Club;
import model.domain.Member;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class MemberDAO {
    private JDBCUtil jdbcUtil = null;

    public MemberDAO() {
        jdbcUtil = new JDBCUtil();
    }

    // 사용자 등록
    public int create(Member member) {
        int result = 0;
        LocalDateTime today = LocalDateTime.now();
        Timestamp timestamp = Timestamp.valueOf(today);
        
        String insertQuery = "INSERT INTO Member (memberId, memberName, password, nickname, email, createdAt) " +
                "VALUES (dbp2024.MemberId_Seq.NEXTVAL, ?, ?, ?, ?, ?)";

        Object[] params = new Object[]{
                member.getMemberName(),
                member.getPassword(),
                member.getNickname(),
                member.getEmail(),
                timestamp
        };

        jdbcUtil.setSql(insertQuery);
        jdbcUtil.setParameters(params);

        try {
            result = jdbcUtil.executeUpdate();
            System.out.println(member.getMemberId() + " 사용자 정보가 삽입되었습니다.");
        } catch (SQLException ex) {
            System.out.println("입력 오류 발생");
            ex.printStackTrace();
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
    
    // email로 사용자ID 검색 (로그인)
    public int findIdByEmail(String email) {
        String selectQuery = "SELECT memberId FROM Member WHERE email = ?";
        int id = 0;

        jdbcUtil.setSql(selectQuery);
        jdbcUtil.setParameters(new Object[]{email});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                id = rs.getInt("memberId");
            }
        } catch (SQLException e) {
            System.out.println("사용자 검색 오류 발생");
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return id;
    }

    // memberId로 사용자 검색
    public Member findMember(int memberId) {
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
                member.setNickname(rs.getString("nickname"));
                member.setPhone(rs.getString("phone"));
                member.setEmail(rs.getString("email"));
                member.setPassword(rs.getString("password"));
                member.setBio(rs.getString("bio"));
                member.setWebsite(rs.getString("website"));
                member.setProfileImageUrl(rs.getString("profileImageUrl"));
                member.setCreatedAt(rs.getTimestamp("createdAt").toLocalDateTime());
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
    public List<Member> findMemberList() {
        String selectQuery = "SELECT * FROM Member";
        List<Member> members = new ArrayList<>();

        jdbcUtil.setSql(selectQuery);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                Member member = new Member();
                member.setMemberId(rs.getInt("memberId"));
                member.setMemberName(rs.getString("memberName"));
                member.setNickname(rs.getString("nickname"));
                member.setPhone(rs.getString("phone"));
                member.setEmail(rs.getString("email"));
                member.setPassword(rs.getString("password"));
                member.setBio(rs.getString("bio"));
                member.setWebsite(rs.getString("website"));
                member.setProfileImageUrl(rs.getString("profileImageUrl"));
                member.setCreatedAt(rs.getTimestamp("createdAt").toLocalDateTime());
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
    
    // 사용자 정보 업데이트
    public boolean update(Member member) {
        String updateQuery = "UPDATE Member SET memberName = ?, nickname = ?, email = ? WHERE memberId = ?";
        
        jdbcUtil.setSql(updateQuery);
        jdbcUtil.setParameters(new Object[]{member.getMemberName(), member.getNickname(), member.getEmail(), member.getMemberId()});
        
        try {
            int rowsAffected = jdbcUtil.executeUpdate();
            
            if (rowsAffected > 0) {
                System.out.println(member.getMemberId() + " 사용자 정보가 수정되었습니다.");
                return true;
            } else {
                System.out.println("수정할 사용자 정보가 없습니다.");
                return false; 
            }
        } catch (Exception e) {
            System.out.println("사용자 삭제 오류 발생");
            e.printStackTrace();
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        
        return true;
    }
    
    // 닉네임 중복 여부 확인
    public boolean isNickNameExists(String nickname) {
        String query = "SELECT COUNT(*) FROM Member WHERE nickName = ?";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{nickname});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // 중복된 닉네임이 있으면 true
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return false;
    }

    // 이메일 중복 여부 확인
    public boolean isEmailExists(String email) {
        String query = "SELECT COUNT(*) FROM Member WHERE email = ?";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{email});

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // 중복된 이메일이 있으면 true
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return false;
    }
    
    
    // 클럽 가입
    @SuppressWarnings("unchecked")
    public boolean joinClub(int clubId, int memberId) {
        // Club의 maxMembers와 현재 members 리스트 확인
        String fetchClubQuery = "SELECT maxMembers, members FROM Club WHERE clubId = ?";
        jdbcUtil.setSql(fetchClubQuery);
        jdbcUtil.setParameters(new Object[]{clubId});

        int maxMembers = 0;
        List<Member> currentMembers = new ArrayList<>();
        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                maxMembers = rs.getInt("maxMembers");
                currentMembers = (List<Member>) rs.getObject("members");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false; // 실패 시 false 반환
        }

        // 최대 인원 체크
        if (currentMembers.size() >= maxMembers) {
            return false; // 최대 인원을 초과하면 가입 실패
        }

        // Member 테이블에서 기존 joinedClubIds 조회 및 업데이트
        String fetchMemberQuery = "SELECT joinedClubIds FROM Member WHERE memberId = ?";
        jdbcUtil.setSql(fetchMemberQuery);
        jdbcUtil.setParameters(new Object[]{memberId});

        List<Integer> joinedClubIds = new ArrayList<>();
        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                joinedClubIds = (List<Integer>) rs.getObject("joinedClubIds");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false; // 실패 시 false 반환
        }

        // 중복 체크 (이미 가입한 클럽인지 확인)
        if (joinedClubIds.contains(clubId)) {
            return false; // 이미 가입한 클럽이면 false 반환
        }

        // 클럽에 멤버 추가, Member 테이블 업데이트
        try {
            // 클럽의 멤버 리스트에 새로운 멤버 추가
            Member newMember = findMember(memberId);
            if (newMember != null) {
                currentMembers.add(newMember);  // 조회된 Member 객체를 클럽의 멤버 리스트에 추가
            } else {
                // 만약 memberId에 해당하는 멤버가 없으면 처리할 로직
                System.out.println("해당 ID의 멤버를 찾을 수 없습니다.");
                return false;
            }

            String updateClubQuery = "UPDATE Club SET members = ? WHERE clubId = ?";
            jdbcUtil.setSql(updateClubQuery);
            jdbcUtil.setParameters(new Object[]{currentMembers, clubId});
            jdbcUtil.executeUpdate(); 

            // Member 테이블의 joinedClubIds에 클럽 ID 추가
            joinedClubIds.add(clubId);
            String updateMemberQuery = "UPDATE Member SET joinedClubIds = ? WHERE memberId = ?";
            jdbcUtil.setSql(updateMemberQuery);
            jdbcUtil.setParameters(new Object[]{joinedClubIds, memberId});
            jdbcUtil.executeUpdate();

            return true; // 성공 시 true 반환
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return false; // 실패 시 false 반환
    }

    
    
    // 회원이 가입한 클럽 조회
    @SuppressWarnings("unchecked")
    public List<Club> findJoinedClubs(int memberId) {
        // Member 테이블에서 joinedClubIds 조회
        String memberQuery = "SELECT joinedClubIds FROM Member WHERE memberId = ?";
        jdbcUtil.setSql(memberQuery);
        jdbcUtil.setParameters(new Object[]{memberId});

        List<Integer> joinedClubIds = new ArrayList<>();
        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                joinedClubIds.add(rs.getInt("clubId"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }

        // Club 테이블에서 클럽 리스트 조회
        List<Club> joinedClubs = new ArrayList<>();
        if (!joinedClubIds.isEmpty()) {
            StringBuilder clubQuery = new StringBuilder("SELECT * FROM Club WHERE clubId IN (");
            for (int i = 0; i < joinedClubIds.size(); i++) {
                clubQuery.append("?");
                if (i < joinedClubIds.size() - 1) {
                    clubQuery.append(", ");
                }
            }
            clubQuery.append(")");

            jdbcUtil.setSql(clubQuery.toString());
            jdbcUtil.setParameters(joinedClubIds.toArray());

            try {
                ResultSet rs = jdbcUtil.executeQuery();
                while (rs.next()) {
                    Club club = new Club();
                    club.setClubId(rs.getInt("clubId"));
                    club.setClubName(rs.getString("name"));
                    club.setDescription(rs.getString("description"));
                    // 추가 필요한 필드
                    joinedClubs.add(club);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                jdbcUtil.close();
            }
        }

        return joinedClubs;
    }
    
    
    // 만든 클럽 조회
    public List<Club> findCreatedClubs(int memberId) {
        // Club 테이블의 leader(Member) 필드에서 memberId를 이용해 클럽 ID 조회
        String query = "SELECT clubId FROM Club WHERE leader IN (SELECT memberId FROM Member WHERE memberId = ?)";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{memberId});

        List<Integer> createdClubIds = new ArrayList<>();

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                createdClubIds.add(rs.getInt("clubId"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            jdbcUtil.close();
        }


     // Club 테이블에서 클럽 리스트 조회
        List<Club> createdClubs = new ArrayList<>();
        if (!createdClubIds.isEmpty()) {
            StringBuilder clubQuery = new StringBuilder("SELECT * FROM Club WHERE clubId IN (");
            for (int i = 0; i < createdClubIds.size(); i++) {
                clubQuery.append("?");
                if (i < createdClubIds.size() - 1) {
                    clubQuery.append(", ");
                }
            }
            clubQuery.append(")");

            jdbcUtil.setSql(clubQuery.toString());
            jdbcUtil.setParameters(createdClubIds.toArray());

            try {
                ResultSet rs = jdbcUtil.executeQuery();
                while (rs.next()) {
                    // Club 객체 생성 및 리스트에 추가
                    Club club = new Club();
                    club.setClubId(rs.getInt("clubId"));
                    club.setClubName(rs.getString("name"));
                    club.setDescription(rs.getString("description"));
                    // 추가 필요한 필드
                    createdClubs.add(club);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                jdbcUtil.close();
            }
        }
        return createdClubs;
    }
}