package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.domain.Club;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class findClubsController implements Controller {
    private final ClubDAO clubDAO = new ClubDAO(); // ClubDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String interest = request.getParameter("interest");
        int maxMembers = Integer.parseInt(request.getParameter("maxMembers"));

        // 클럽의 멤버 리스트 가져오기
        List<Club> clubs = clubDAO.findClubs(interest, maxMembers);

        // 멤버 리스트를 request에 저장
        request.setAttribute("clubs", clubs);

        // 검색 결과 페이지로 이동
        return "/club/";
    }
}
