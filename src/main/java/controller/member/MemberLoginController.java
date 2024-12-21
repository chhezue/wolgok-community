package controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.service.MemberManager;

public class MemberLoginController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			// 모델에 로그인 처리를 위임
			MemberManager manager = MemberManager.getInstance();
			manager.login(email, password);
			
			int memberId = manager.findIdByEmail(email);
	
			// 세션에 사용자 아이디 저장
			HttpSession session = request.getSession();
            session.setAttribute(MemberSessionUtils.MEMBER_SESSION_KEY, memberId);
            session.setAttribute("isLoggedIn", true); // 로그인 상태 저장
            
            response.sendRedirect(request.getContextPath() + "/main");
            return null;
		} catch (Exception e) {
			/* UserNotFoundException이나 PasswordMismatchException 발생 시
			 * 다시 login form을 사용자에게 전송하고 오류 메세지도 출력
			 */
            request.setAttribute("loginFailed", true);
			request.setAttribute("exception", e);
            return "/member/loginForm.jsp";			
		}	
    }
}
