package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.member.*;
import controller.user.DeleteUserController;
import controller.user.RegisterUserController;
import controller.user.UpdateUserController;
import controller.comm.*;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    // 각 요청 uri에 대한 controller 객체를 저장할 HashMap 생성
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	// 각 uri에 대응되는 controller 객체를 생성 및 저장
        mappings.put("/", new ForwardController("/main.jsp")); // 시작 페이지
        mappings.put("/member/login/form", new ForwardController("/member/loginForm.jsp"));
        mappings.put("/member/login", new MemberLoginController()); // 로그인 구현
        mappings.put("/member/logout", new MemberLogoutController());
        
        // 회원 가입 폼 요청
        mappings.put("/user/register", new RegisterUserController());

        // 사용자 정보 수정 폼 요청과 수정 요청 처리 병합
//      mappings.put("/user/update/form", new UpdateUserFormController());
        mappings.put("/user/update", new UpdateUserController());
        
        mappings.put("/user/delete", new DeleteUserController());
        
        // 커뮤니티 관련 request URI 추가
        mappings.put("/community/list", new ListCommunityController());
        mappings.put("/community/view", new ViewCommunityController());
        mappings.put("/community/create/form", new ForwardController("/community/creationForm.jsp"));
        mappings.put("/community/create", new CreateCommunityController());
        mappings.put("/community/update", new UpdateCommunityController());

        //김세령 매핑 추가
        mappings.put("/member/register/form", new ForwardController("/member/registerForm.jsp")); // 사용자 등록
        mappings.put("/member/register", new RegisterMemberController()); // 사용자 등록
        mappings.put("/member/findInfo", new FindInfoController());       // 아이디 및 비밀번호 찾기
        mappings.put("/member/delete", new DeleteMemberController());   //사용자 계정 삭제
        
        // 메인화면 매핑
        mappings.put("/main", new ForwardController("/main.jsp"));
        
        // member 매핑 추가
        mappings.put("/wolgok-community/member/mypage", new ForwardController("/member/myPage.jsp")); // main 메뉴에서 마이페이지로 이동
        mappings.put("/wolgok-community/member/myclub", new ForwardController("/member/myClub.jsp")); // main 메뉴에서 나의모임으로 이동
        
        logger.info("Initialized Request Mapping!");
    }

    public Controller findController(String uri) {	
    	// 주어진 uri에 대응되는 controller 객체를 찾아 반환
        return mappings.get(uri);
    }
}