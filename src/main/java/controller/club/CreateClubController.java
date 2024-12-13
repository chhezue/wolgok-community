package controller.club;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.domain.Club;
import model.dao.ClubDAO;

import java.time.LocalDate;
import java.util.List;

public class CreateClubController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(CreateClubController.class);
    private final ClubDAO clubDAO = new ClubDAO(); // ClubDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Club club = new Club();
        club.setClubName(request.getParameter("clubName"));
        club.setDescription(request.getParameter("description"));
        club.setThumbnail(request.getParameter("thumbnail"));
        club.setMaxMembers(Integer.parseInt(request.getParameter("maxMembers")));
        club.setCreatedAt(LocalDate.now()); // 현재 날짜로 설정

        // 해시태그 처리
        String hashtags = request.getParameter("hashtags");
        if (hashtags != null && !hashtags.isEmpty()) {
            club.setHashtags(List.of(hashtags.split(","))); // 문자열을 리스트로 변환
        }

        try {
            clubDAO.insertClub(club); // ClubDAO를 통해 클럽 생성 요청

            log.debug("Create Club : {}", club);
            return "redirect:/club/clubInfo"; // 성공 시 생성된 클럽 정보 페이지로 이동

        } catch (Exception e) { // 예외 발생 시 입력 폼으로 포워딩
            request.setAttribute("creationFailed", true);
            request.setAttribute("exception", e);
            request.setAttribute("club", club);
            return "/club/clubCreate.jsp"; // 클럽 생성 폼으로 다시 이동
        }
    }
}