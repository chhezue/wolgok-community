package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.member.*;
import controller.club.*;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);

    // 각 요청 uri에 대한 controller 객체를 저장할 HashMap 생성
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
        // 각 uri에 대응되는 controller 객체를 생성 및 저장
        mappings.put("/", new ForwardController("/main.jsp")); // 시작 페이지
        mappings.put("/main", new ForwardController("/main.jsp"));

        // 멤버 관련 매핑
        mappings.put("/member/login/form", new ForwardController("/member/loginForm.jsp"));
        mappings.put("/member/login", new MemberLoginController()); // 로그인 구현
        mappings.put("/member/logout", new MemberLogoutController());
        mappings.put("/member/register/form", new ForwardController("/member/registerForm.jsp"));
        mappings.put("/member/register", new RegisterMemberController()); // 사용자 등록
        mappings.put("/member/delete", new DeleteMemberController());   //사용자 계정 삭제
        mappings.put("/member/mypage", new ForwardController("/member/myPage.jsp"));
        mappings.put("/member/myclub", new ForwardController("/member/myClub.jsp"));

        // 클럽 관련 매핑
        mappings.put("/club/search", new findClubsController());
        mappings.put("/club/search/form", new ForwardController("/club/clubSearch.jsp"));
        mappings.put("/club/info", new ViewClubController());
        mappings.put("/club/members", new MembersInClubController());
        mappings.put("/club/update", new UpdateClubController());
        mappings.put("/club/update/form", new ForwardController("/club/updateForm.jsp"));
        mappings.put("/club/create", new CreateClubController());
        mappings.put("/club/create/form", new ForwardController("/club/createForm.jsp"));
        mappings.put("/club/join", new JoinClubController());
        mappings.put("/club/leave", new LeaveClubController());
    }

    public Controller findController(String uri) {
        // 주어진 uri에 대응되는 controller 객체를 찾아 반환
        return mappings.get(uri);
    }
}