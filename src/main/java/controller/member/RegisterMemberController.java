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
        String memberName = request.getParameter("name");
        String nickname = request.getParameter("nickname");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String bio = request.getParameter("introduction");
        String profileImgUrl = request.getParameter("profile_image");
        String website = request.getParameter("website");

        Member member = new Member();
        member.setMemberName(memberName);
        member.setNickname(nickname);
        member.setPassword(password);
        member.setEmail(email);
        member.setPhone(phone);
        member.setBio(bio);
        member.setProfileImageUrl(profileImgUrl);
        member.setWebsite(website);

        boolean success = memberManager.createMember(member);

        if (success) {
            request.setAttribute("message", "회원 등록 성공");
            return "/member/loginForm.jsp";
//            return "/member/registerSuccess.jsp"; // Forwarding
        } else {
            request.setAttribute("error", "회원 등록 실패");
            System.out.println(memberName);
            System.out.println(password);
            return "/member/registerForm.jsp";
//            return "/member/registerFail.jsp"; // Forwarding
        }
    }
}
