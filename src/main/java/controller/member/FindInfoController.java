package controller.member;

import manager.MemberManager;
import model.domain.Member;
import controller.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindInfoController implements Controller {
    private MemberManager memberManager;

    public FindInfoController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String memberId = request.getParameter("memberId");

        Member member = memberManager.findMemberById(Integer.parseInt(memberId));
        if (member != null) {
            request.setAttribute("member", member);
            return "/member/findInfoSuccess.jsp"; // Forwarding
        } else {
            request.setAttribute("error", "사용자를 찾을 수 없습니다.");
            return "/member/findInfoFail.jsp"; // Forwarding
        }
    }
}
