package controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.service.MemberManager;

public class MemberController implements Controller {
    private MemberManager memberManager;

    public MemberController() {
        this.memberManager = new MemberManager();
    }

    // 관심사 추가
    public void addInterest(String memberId, String interest) {
        try {
            boolean success = memberManager.addInterest(memberId, interest);
            if (success) {
                System.out.println("관심사가 성공적으로 추가되었습니다.");
            } else {
                System.out.println("관심사 추가에 실패했습니다.");
            }
        } catch (Exception e) {
            System.out.println("오류 발생: " + e.getMessage());
        }
    }

    // 관심사 제거
    public void removeInterest(String memberId, String interest) {
        try {
            boolean success = memberManager.removeInterest(memberId, interest);
            if (success) {
                System.out.println("관심사가 성공적으로 제거되었습니다.");
            } else {
                System.out.println("관심사 제거에 실패했습니다.");
            }
        } catch (Exception e) {
            System.out.println("오류 발생: " + e.getMessage());
        }
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // TODO Auto-generated method stub
        return null;
    }
}
