package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.domain.Club;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ListClubController implements Controller {
    private final ClubDAO clubDAO = new ClubDAO(); // ClubDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
        List<Club> clubList = clubDAO.getClubList();

        // clubList 객체를 request에 저장하여 어느 화면으로 이동? (forwarding)
        request.setAttribute("clubList", clubList);
        return "/community/list.jsp";
    }
}