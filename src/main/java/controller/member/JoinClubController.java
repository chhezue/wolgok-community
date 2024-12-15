package controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.service.MemberManager;

public class JoinClubController implements Controller {
    private MemberManager memberManager;

    public JoinClubController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String memberIdStr = request.getParameter("memberId");
        String clubIdStr = request.getParameter("clubId");
        
        if (memberIdStr == null || clubIdStr == null) {
            request.setAttribute("error", "회원 ID와 클럽 ID는 필수입니다.");
            return "/club/joinClub.jsp"; // 실패 시 리턴 페이지
        }

        try {
            int memberId = Integer.parseInt(memberIdStr);
            int clubId = Integer.parseInt(clubIdStr);

            boolean joinResult = memberManager.joinClub(clubId, memberId);

            if (joinResult) {
                request.setAttribute("successMessage", "클럽 가입에 성공했습니다.");
                return "/club/myClubs.jsp"; // 가입 성공 페이지로 포워딩
            } else {
                request.setAttribute("error", "클럽 가입에 실패했습니다.");
                return "/club/joinClub.jsp"; // 실패 시 리턴 페이지
            }

        } catch (NumberFormatException e) {
            // memberId나 clubId가 잘못된 형식일 경우
            request.setAttribute("error", "잘못된 형식의 회원 ID 또는 클럽 ID입니다.");
            return "/club/joinClub.jsp"; // 실패 시 리턴 페이지
        }
    }
    
}
