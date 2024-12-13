package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteClubController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(DeleteClubController.class);
    private final ClubDAO clubDAO = new ClubDAO(); // ClubDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 클럽 ID 가져오기
        String clubIdStr = request.getParameter("clubId");
        int clubId = Integer.parseInt(clubIdStr); // 클럽 ID를 정수형으로 변환

        // 클럽 삭제 호출
        int result = clubDAO.deleteClub(clubId);
        if (result > 0) {
            log.info("Delete Club Success: {}", clubId);
            // 삭제 후 리다이렉트 또는 성공 페이지로 이동
            return "redirect:/club/list"; // 클럽 목록 페이지로 리다이렉트
        } else {
            log.error("Delete Club Fail: {}", clubId);
            // 삭제 실패 시 에러 페이지로 이동
            request.setAttribute("errorMessage", "클럽 삭제에 실패했습니다.");
            return "/error/errorPage.jsp";
        }
    }
}