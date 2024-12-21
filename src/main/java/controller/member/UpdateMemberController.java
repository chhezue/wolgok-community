package controller.member;

import model.service.MemberManager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.domain.Member;

public class UpdateMemberController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(UpdateMemberController.class);

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        MemberManager manager = MemberManager.getInstance();
        
        // GET 요청 처리 - 수정하려는 사용자 정보 가져오기
        if (request.getMethod().equals("GET")) {    
            String updateId = request.getParameter("memberId");

            log.debug("UpdateForm Request : {}", updateId);
            
            Member member = manager.findMemberById(Integer.parseInt(updateId)); // 수정하려는 사용자 정보 검색
            request.setAttribute("member", member);
            return "/member/myPage.jsp.jsp"; // 수정 폼으로 포워딩
        }   
        
        // POST 요청 처리 - 수정된 사용자 정보 받아오기
        int memberId = Integer.parseInt(request.getParameter("memberId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        
        // 사용자 정보 업데이트
        Member updateMember = new Member();
        updateMember.setMemberId(memberId);
        updateMember.setMemberName(name);
        updateMember.setEmail(email);

        log.debug("Update Member : {}", updateMember);

        boolean isUpdated = manager.updateMember(updateMember);
        
        if (isUpdated) {
            // 수정 성공 시 사용자 정보 화면으로 리다이렉트
            return "redirect:/member/view?memberId=" + memberId;
        } else {
            // 수정 실패 시 수정 폼으로 돌아가기
            request.setAttribute("errorMessage", "정보 수정에 실패했습니다.");
            return "/member/myPage.jsp.jsp";
        }
    }

}
