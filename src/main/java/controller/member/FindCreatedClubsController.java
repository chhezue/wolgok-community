package controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.domain.Club;
import model.service.MemberManager;

public class FindCreatedClubsController implements Controller {
    private MemberManager memberManager;
    
    public FindCreatedClubsController() {
        this.memberManager = new MemberManager();
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int memberId = Integer.parseInt(request.getParameter("memberId"));
        
        try {
            List<Club> createdClubs = memberManager.findCreatedClubs(memberId);
            request.setAttribute("createdClubs", createdClubs);
            
            return "/member/myClubs.jsp";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("생성한 클럽 리스트를 조회하는 중에 오류 발생");
            return "/member/myClubs.jsp";
        }
    }
    
}
