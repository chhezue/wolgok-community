package controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.domain.Member;
import model.service.MemberManager;

public class ViewMemberController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {			
        MemberManager manager = MemberManager.getInstance();
        
        HttpSession session = request.getSession();
        Integer memberId = (Integer) session.getAttribute(MemberSessionUtils.MEMBER_SESSION_KEY);

        int id = memberId.intValue();
        
        Member member = null;
        member = manager.findMemberById(id);    // 사용자 정보 검색    
        request.setAttribute("member", member);     // 사용자 정보 저장    
        
        return "/member/myPage.jsp";                // 사용자 보기 화면으로 이동
    }
}
