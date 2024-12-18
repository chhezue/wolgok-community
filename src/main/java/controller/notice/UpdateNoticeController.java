//package controller.notice;
//
//import controller.Controller;
//import model.dao.NoticeDAO;
//import model.domain.Notice;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.util.List;
//
//public class UpdateNoticeController implements Controller {
//    private static final Logger log = LoggerFactory.getLogger(UpdateNoticeController.class);
//    private final NoticeDAO noticeDAO = new NoticeDAO(); // NoticeDAO 인스턴스 생성
//
//    @Override
//    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        // 공지사항 ID와 수정할 내용을 가져옴
//        String noticeIdStr = request.getParameter("noticeId");
//        String title = request.getParameter("title");
//        String content = request.getParameter("content");
//        String category = request.getParameter("category");
//        String pinnedStr = request.getParameter("pinned");
//
//        // 공지사항 ID 변환 (null 체크)
//        int noticeId = Integer.parseInt(noticeIdStr);
//
//        // 수정할 Notice 객체 생성
//        Notice updateNotice = new Notice();
//        updateNotice.setNoticeId(noticeId);
//        updateNotice.setTitle(title);
//        updateNotice.setContent(content);
//        updateNotice.setCategory(category);
//        updateNotice.setPinned(Boolean.parseBoolean(pinnedStr));
//
//        // 첨부파일 처리
//        String attachments = request.getParameter("attachments");
//        if (attachments != null && !attachments.isEmpty()) {
//            updateNotice.setAttachments(List.of(attachments.split(","))); // 문자열을 리스트로 변환
//        }
//
//        // 공지사항 수정 호출 및 결과 처리
//        int result = noticeDAO.updateNotice(noticeId, updateNotice); // NoticeDAO의 수정 메서드 호출
//        if (result > 0) {
//            log.info("Update Notice Success: {}", noticeId);
//            return "redirect:/notice/noticeInfo?noticeId=" + noticeId; // 성공 시 수정된 공지사항 정보 페이지로 이동
//        } else {
//            log.error("Update Notice Fail: {}", noticeId);
//            // 수정 실패 시 에러 페이지로 이동
//            request.setAttribute("errorMessage", "공지사항 수정 실패");
//            return "/error/errorPage.jsp";
//        }
//    }
//}
