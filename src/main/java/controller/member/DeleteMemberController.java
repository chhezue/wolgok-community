package controller.member;

import model.service.MemberManager;
import controller.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteMemberController implements Controller {
    private MemberManager memberManager;

    public DeleteMemberController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String memberId = request.getParameter("memberId");

        boolean success = memberManager.deleteMember(Integer.parseInt(memberId));

        if (success) {
            request.setAttribute("message", "사용자 삭제 성공");
            return "/member/deleteSuccess.jsp"; // Forwarding
        } else {
            request.setAttribute("error", "사용자 삭제 실패");
            return "/member/deleteFail.jsp"; // Forwarding
        }
    }
}
