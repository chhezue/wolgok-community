package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.domain.Club;
import model.domain.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.List;

public class ViewClubController implements Controller {
    private final ClubDAO clubDAO = new ClubDAO(); // ClubDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String clubIdStr = request.getParameter("clubId");
        int clubId = Integer.parseInt(clubIdStr); // 클럽 ID를 정수형으로 변환

        // 클럽 상세 정보 조회
        Club club = clubDAO.showClubDetail(clubId);

        // 클럽이 존재하면 요청 속성에 설정
        if (club != null) {
            request.setAttribute("club", club); // 클럽 정보를 request에 저장
        } else {
            request.setAttribute("error", "클럽을 찾을 수 없습니다."); // 클럽이 없을 경우 오류 메시지 설정
        }

        // 클럽 상세 페이지로 포워드
        return "/club/detail.jsp"; // 클럽 상세 정보를 보여주는 JSP 파일 경로
    }
}
