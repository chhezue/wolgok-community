package controller.notice;

import controller.Controller;
import model.dao.NoticeDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PinNoticeController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(PinNoticeController.class);
    private final NoticeDAO noticeDAO = new NoticeDAO(); // NoticeDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 공지사항 ID 가져오기
        String noticeIdStr = request.getParameter("noticeId");
        int noticeId = Integer.parseInt(noticeIdStr); // 공지사항 ID를 정수형으로 변환

        // 상단 고정 여부 가져오기
        String isPinnedStr = request.getParameter("isPinned");
        boolean isPinned = Boolean.parseBoolean(isPinnedStr); // boolean으로 변환

        // 공지사항 상단 고정 요청
        int result = noticeDAO.pinNotice(noticeId, isPinned); // NoticeDAO의 pinNotice 메서드 호출
        if (result > 0) {
            log.info("Pin Notice Success: {}, isPinned: {}", noticeId, isPinned);
            return "redirect:/notice/list"; // 성공 시 공지사항 목록 페이지로 리다이렉트
        } else {
            log.error("Pin Notice Fail: {}", noticeId);
            // 실패 시 에러 페이지로 이동
            request.setAttribute("errorMessage", "공지사항 상단 고정에 실패했습니다.");
            return "/error/errorPage.jsp";
        }
    }
}

