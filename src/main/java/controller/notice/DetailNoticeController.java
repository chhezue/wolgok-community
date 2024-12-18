//package controller.notice;
//
//import controller.Controller;
//import model.dao.NoticeDAO;
//import model.domain.Notice;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class DetailNoticeController implements Controller {
//    private final NoticeDAO noticeDAO = new NoticeDAO(); // NoticeDAO 인스턴스 생성
//
//    @Override
//    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        // 공지사항 ID 가져오기
//        String noticeIdStr = request.getParameter("noticeId");
//        int noticeId = Integer.parseInt(noticeIdStr); // 공지사항 ID를 정수형으로 변환
//
//        // 공지사항 상세 정보 가져오기
//        Notice notice = noticeDAO.findNotice(noticeId);
//        if (notice == null) {
//            request.setAttribute("errorMessage", "해당 공지사항이 존재하지 않습니다.");
//            return "/error/errorPage.jsp"; // 공지사항이 없는 경우 에러 페이지로 이동
//        }
//
//        // notice 객체를 request에 저장하여 어느 화면으로 이동? (forwarding)
//        request.setAttribute("notice", notice);
//        return "/notice/detail.jsp"; // 공지사항 상세 보기 페이지로 이동
//    }
//}
