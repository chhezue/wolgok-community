package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.dao.MemberDAO;
import model.domain.Club;
import model.domain.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class MembersInClubController implements Controller {
    private final ClubDAO clubDAO = new ClubDAO();
    private final MemberDAO memberDAO = new MemberDAO();
    private static final int PAGE_SIZE = 10; // 한 페이지당 표시할 멤버 수

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 클럽 ID와 현재 페이지 파라미터 받기
        int clubId = Integer.parseInt(request.getParameter("clubId"));
        int currentPage = 1;
        if (request.getParameter("page") != null) {
            currentPage = Integer.parseInt(request.getParameter("page"));
        }

        // 필터 파라미터 받기
        String memberType = request.getParameter("memberType");
        String searchKeyword = request.getParameter("searchKeyword");

        // 클럽 정보 조회
        Club club = clubDAO.showClubDetail(clubId);
        if (club == null) {
            response.sendRedirect("/error.jsp");
            return null;
        }

        // 전체 멤버 수 조회
        int totalMembers = clubDAO.getTotalMemberCount(clubId, memberType, searchKeyword);
        int totalPages = (int) Math.ceil((double) totalMembers / PAGE_SIZE);

        // 페이지네이션을 적용한 멤버 리스트 조회
        int offset = (currentPage - 1) * PAGE_SIZE;
        List<Member> members = clubDAO.getMembersByClubId(clubId, offset, PAGE_SIZE, memberType, searchKeyword);

        // 현재 로그인한 사용자 ID 가져오기
        HttpSession session = request.getSession();
        Integer memberId = (Integer) session.getAttribute("memberId");

        // request에 필요한 데이터 저장
        request.setAttribute("club", club);
        request.setAttribute("members", members);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("memberType", memberType);
        request.setAttribute("searchKeyword", searchKeyword);

        return "/club/clubMember.jsp";
    }
}
