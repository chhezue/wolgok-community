package manager;

import model.dao.MemberDAO;
import model.domain.Member;

import java.util.List;

public class MemberManager {
    private MemberDAO memberDAO;

    // Constructor
    public MemberManager() {
        this.memberDAO = new MemberDAO();
    }

    // 사용자 등록
    public boolean createMember(Member member) {
        return memberDAO.create(member) > 0; // DAO 메서드 호출 후 성공 여부 반환
    }

    // 사용자 ID로 검색
    public Member findMemberById(int memberId) {
        return memberDAO.findUser(memberId); // DAO 메서드 호출
    }

    // 모든 사용자 리스트 조회
    public List<Member> getAllMembers() {
        return memberDAO.findUserList(); // DAO 메서드 호출
    }

    // 사용자 삭제
    public boolean deleteMember(int memberId) {
        return memberDAO.delete(memberId) > 0; // DAO 메서드 호출 후 성공 여부 반환
    }

}
