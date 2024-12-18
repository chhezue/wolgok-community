//package controller.notice;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import controller.Controller;
//import model.domain.Notice;
//import model.service.NoticeManager;
//
//import java.time.LocalDateTime;
//import java.util.List;
//
//public class CreateNoticeController implements Controller {
//    private static final Logger log = LoggerFactory.getLogger(CreateNoticeController.class);
//    private final NoticeManager noticeManager = NoticeManager.getInstance(); // NoticeManager 인스턴스 생성
//
//    @Override
//    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        Notice notice = new Notice();
//        notice.setTitle(request.getParameter("title"));
//        notice.setContent(request.getParameter("content"));
//        notice.setCategory(request.getParameter("category"));
//        notice.setCreatedAt(LocalDateTime.now()); // 현재 날짜로 설정
//        notice.setViews(0); // 조회수 초기화
//        notice.setPinned(Boolean.parseBoolean(request.getParameter("pinned"))); // 상단 고정 여부 설정
//
//        // 첨부파일 처리
//        String attachments = request.getParameter("attachments");
//        if (attachments != null && !attachments.isEmpty()) {
//            notice.setAttachments(List.of(attachments.split(","))); // 문자열을 리스트로 변환
//        }
//
//        try {
//            int result = noticeManager.createNotice(notice); // NoticeManager를 통해 공지사항 생성 요청
//            if (result > 0) {
//                log.debug("Create Notice : {}", notice);
//                return "redirect:/notice/noticeInfo?noticeId=" + result; // 성공 시 생성된 공지사항 정보 페이지로 이동
//            } else {
//                throw new Exception("공지사항 생성에 실패했습니다.");
//            }
//
//        } catch (Exception e) { // 예외 발생 시 입력 폼으로 포워딩
//            request.setAttribute("creationFailed", true);
//            request.setAttribute("exception", e);
//            request.setAttribute("notice", notice);
//            return "/notice/noticeCreate.jsp"; // 공지사항 생성 폼으로 다시 이동
//        }
//    }
//}
