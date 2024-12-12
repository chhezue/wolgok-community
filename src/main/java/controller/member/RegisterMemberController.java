package controller.member;

import model.service.MemberManager;
import model.domain.Member;
import controller.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterMemberController implements Controller {
    private MemberManager memberManager;

    public RegisterMemberController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String memberName = request.getParameter("memberName");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        String email = request.getParameter("email");

        Member member = new Member();
        member.setMemberName(memberName);
        member.setPassword(password);
        member.setNickname(nickname);
        member.setEmail(email);

        boolean success = memberManager.createMember(member);

        if (success) {
            request.setAttribute("message", "회원 등록 성공");
            return "/member/registerSuccess.jsp"; // Forwarding
        } else {
            request.setAttribute("error", "회원 등록 실패");
            return "/member/registerFail.jsp"; // Forwarding
        }
    }
}
