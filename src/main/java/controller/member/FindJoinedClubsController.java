package controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.domain.Club;
import model.service.MemberManager;

public class FindJoinedClubsController implements Controller {
    private MemberManager memberManager;
    
    public FindJoinedClubsController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Integer memberId = (Integer) request.getSession().getAttribute("memberId");
        
        if (memberId == null) {
            // 로그인되지 않은 경우, 로그인 페이지로 리다이렉트
            response.sendRedirect("/login.jsp");
            return null;
        }
        
        try {
            List<Club> joinedClubs = memberManager.findJoinedClubs(memberId);
            request.setAttribute("joinedClubs", joinedClubs);

            return "/member/myClubs.jsp";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("가입한 클럽 리스트를 조회하는 중에 오류 발생");
            return "/member/myClubs.jsp";
        }
    }
    
}
