package controller.notice;

import controller.Controller;
import model.dao.NoticeDAO;
import model.domain.Notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ListNoticeController implements Controller {
    private final NoticeDAO noticeDAO = new NoticeDAO(); // NoticeDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 클럽 ID 가져오기
        String clubIdStr = request.getParameter("clubId");
        int clubId = Integer.parseInt(clubIdStr); // 클럽 ID를 정수형으로 변환

        // 공지 목록 가져오기
        List<Notice> noticeList = noticeDAO.listAllNotice(clubId);

        // noticeList 객체를 request에 저장하여 어느 화면으로 이동? (forwarding)
        request.setAttribute("noticeList", noticeList);
        return "/notice/list.jsp"; // 공지사항 목록 페이지로 이동
    }
}
