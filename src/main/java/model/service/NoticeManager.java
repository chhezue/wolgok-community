package model.service;

import model.dao.NoticeDAO;
import model.domain.Notice;

import java.util.List;

public class NoticeManager {
    private static NoticeManager noticeMan = new NoticeManager();
    private NoticeDAO noticeDAO;

    private NoticeManager() {
        this.noticeDAO = new NoticeDAO();
    }

    public static NoticeManager getInstance() {
        return noticeMan;
    }

    // 공지사항 생성
    public int createNotice(Notice notice) {
        if (notice == null) {
            System.out.println("공지사항 정보가 유효하지 않습니다.");
            return 0;
        }
        return noticeDAO.create(notice);
    }

    // 공지사항 삭제
    public int deleteNotice(int noticeId) {
        Notice notice = noticeDAO.findNotice(noticeId);
        if (notice == null) {
            System.out.println("삭제할 공지사항이 존재하지 않습니다.");
            return 0;
        }
        return noticeDAO.delete(noticeId);
    }

    // 공지사항 조회
    public Notice findNotice(int noticeId) {
        Notice notice = noticeDAO.findNotice(noticeId);
        if (notice == null) {
            System.out.println("해당 ID의 공지사항이 존재하지 않습니다.");
        }
        return notice;
    }

    // 모든 공지사항 목록 조회
    public List<Notice> listAllNotice(int clubId) {
        return noticeDAO.listAllNotices(clubId);
    }
}
