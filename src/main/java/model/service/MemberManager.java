package model.service;

import model.dao.MemberDAO;
import model.domain.Member;

public class MemberManager {
    private static MemberManager memberMan = new MemberManager();
    private MemberDAO memberDAO;

    public MemberManager() {
        this.memberDAO = new MemberDAO();
    }
    
    public static MemberManager getInstance() {
        return memberMan;
    }

    // 사용자 정보 수정
    public boolean updateMember(Member member) {
        if (member == null || memberDAO.findMember(member.getMemberId()) == null) {
            System.out.println("해당 ID의 사용자가 존재하지 않거나 입력값이 유효하지 않습니다.");
            return false;
        }

        return memberDAO.update(member);
    }

    // 사용자 삭제 (연관 데이터 정리 포함)
    public int deleteMember(int memberId) {
        Member member = memberDAO.findMember(memberId);
        if (member == null) {
            System.out.println("삭제할 사용자가 존재하지 않습니다.");
            return 0;
        }

//        // 연관 데이터 정리 (예: 관심사, 메시지 등 삭제)
//        memberDAO.deleteMemberInterests(memberId);
//        memberDAO.deleteMemberMessages(memberId);
        
        // 사용자 삭제
        return memberDAO.delete(memberId);
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
