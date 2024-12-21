package controller.member;

import model.service.MemberManager;
import controller.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteMemberController implements Controller {
    private MemberManager memberManager;

    public DeleteMemberController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        Integer memberId = (Integer) session.getAttribute(MemberSessionUtils.MEMBER_SESSION_KEY);

        int id = memberId.intValue();

        boolean success = memberManager.deleteMember(id);

        if (success) {
            request.setAttribute("message", "사용자 삭제 성공");
            return "redirect:/member/logout";
        } else {
            request.setAttribute("error", "사용자 삭제 실패");
            return "redirect:/member/mypage";
        }
    }
}
