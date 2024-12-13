package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.domain.Club;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class UpdateClubController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(UpdateClubController.class);
    private final ClubDAO clubDAO = new ClubDAO(); // ClubDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 모임 설명, 썸네일, 최대 인원, 해시태그만 수정 가능
        String clubId = request.getParameter("clubId");
        String description = request.getParameter("description");
        String thumbnail = request.getParameter("thumbnail");
        String maxMembersStr = request.getParameter("maxMembers");
        String[] hashtags = request.getParameterValues("hashtags");

        // 최대 인원 변환 (null 체크)
        int maxMembers = maxMembersStr != null ? Integer.parseInt(maxMembersStr) : 0;

        // Club 객체 생성
        Club club = new Club();
        club.setClubId(Integer.parseInt(clubId));
        club.setDescription(description);
        club.setThumbnail(thumbnail);
        club.setMaxMembers(maxMembers);
        club.setHashtags(List.of(hashtags));

        // 클럽 수정 호출 및 결과 처리
        int result = clubDAO.updateClub(club);
        if (result > 0) {
            log.info("Update Club Success: {}", clubId);
            return "redirect:/club/clubInfo"; // 성공 시 생성된 클럽 정보 페이지로 이동
        } else {
            log.error("Update Club Fail: {}", clubId);
            // 수정 실패 시 에러 페이지로 이동
            request.setAttribute("errorMessage", "club update fail");
            return "/error/errorPage.jsp";
        }
    }
}