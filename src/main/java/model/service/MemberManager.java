package model.service;

import model.dao.MemberDAO;
import model.domain.Member;

import java.util.List;

public class MemberManager {
    private MemberDAO memberDAO;
    private static MemberManager memberMan = new MemberManager();

    // Constructor
    public MemberManager() {
        this.memberDAO = new MemberDAO();
    }
    
    public static MemberManager getInstance() {
        return memberMan;
    }

    // 사용자 등록
    public boolean createMember(Member member) {
        return memberDAO.create(member) > 0; // DAO 메서드 호출 후 성공 여부 반환
    }

    // 사용자 ID로 검색
    public Member findMemberById(int memberId) {
        return memberDAO.findMember(memberId); // DAO 메서드 호출
    }

    // 모든 사용자 리스트 조회
    public List<Member> getAllMembers() {
        return memberDAO.findMemberList(); // DAO 메서드 호출
    }
    
 // 사용자 정보 수정
    public boolean updateMember(Member member) {
        if (member == null || memberDAO.findMember(member.getMemberId()) == null) {
            System.out.println("해당 ID의 사용자가 존재하지 않거나 입력값이 유효하지 않습니다.");
            return false;
        }

        return memberDAO.update(member);
    }

    // 사용자 삭제
    public boolean deleteMember(int memberId) {
        Member member = memberDAO.findMember(memberId);
        if (member == null) {
            System.out.println("삭제할 사용자가 존재하지 않습니다.");
            return false;
        }
        
        return memberDAO.delete(memberId) > 0; // DAO 메서드 호출 후 성공 여부 반환
    }
    
    // 닉네임 중복 확인
    public boolean findMemberByNickName(String nickName) {
        return memberDAO.isNickNameExists(nickName);
    }

    // 이메일 중복 확인
    public boolean findMemberByEmail(String email) {
        return memberDAO.isEmailExists(email);
    }
}
