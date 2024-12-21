package controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.service.MemberManager;

public class LeaveClubController implements Controller {
    private MemberManager memberManager;

    public LeaveClubController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String clubIdStr = request.getParameter("clubId");
        HttpSession session = request.getSession();
        Integer memberId = (Integer) session.getAttribute("memberId");

        if (memberId == null) {
            request.setAttribute("error", "로그인이 필요한 서비스입니다.");
            return "/member/loginForm.jsp";
        }

        if (clubIdStr == null) {
            request.setAttribute("error", "클럽 ID가 필요합니다.");
            return "/club/clubInfo.jsp";
        }

        try {
            int clubId = Integer.parseInt(clubIdStr);
            boolean result = memberManager.leaveClub(clubId, memberId);

            if (result) {
                request.setAttribute("message", "클럽 탈퇴가 완료되었습니다.");
                return "redirect:/member/myClubs";
            } else {
                request.setAttribute("error", "클럽 탈퇴에 실패했습니다.");
                return "/club/clubInfo.jsp";
            }
        } catch (NumberFormatException e) {
            request.setAttribute("error", "잘못된 클럽 ID 형식입니다.");
            return "/club/clubInfo.jsp";
        }
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> parent of 65ff08f (.)
