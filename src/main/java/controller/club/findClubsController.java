package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.domain.Club;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class findClubsController implements Controller {
    private final ClubDAO clubDAO = new ClubDAO();

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 필터 파라미터 받기
        String[] interests = request.getParameterValues("interests");
        String memberRange = request.getParameter("memberRange");
        String sortBy = request.getParameter("sortBy");

        // 클럽 리스트 조회
        List<Club> clubs = clubDAO.findClubs(interests, memberRange, sortBy);

        // 검색 결과를 request에 저장
        request.setAttribute("clubs", clubs);
        request.setAttribute("selectedInterests", interests);
        request.setAttribute("selectedMemberRange", memberRange);
        request.setAttribute("selectedSortBy", sortBy);

        return "/club/clubSearch.jsp";
    }
}
