package controller.club;

import controller.Controller;
import model.dao.ClubDAO;
import model.domain.Member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class MembersInClubController implements Controller {
    private final ClubDAO clubDAO = new ClubDAO(); // MemberDAO 인스턴스 생성

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String clubIdStr = request.getParameter("clubId");
        int clubId = Integer.parseInt(clubIdStr); // 클럽 ID를 정수형으로 변환

        // 클럽의 멤버 리스트 가져오기
        List<Member> members = clubDAO.getMembersByClubId(clubId);

        // 멤버 리스트를 request에 저장
        request.setAttribute("members", members);

        // 클럽 ID도 request에 저장 (필요 시)
        request.setAttribute("clubId", clubId);

        // 멤버 리스트 페이지로 포워드
        return "/club/membersList.jsp"; // 멤버 리스트를 보여줄 JSP 페이지
    }
}
