<%@page contentType="text/html; charset=utf-8" %>
<%@page import="model.domain.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	User user = (User)request.getAttribute("user");
%>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<script>
function userRemove() {
	return confirm("정말 삭제하시겠습니까?");		
}
</script>
</head>
<body>
  <br>
  <table style="width:100%">
    <tr>
	  <td width="20"></td>
	  <td>
	    <table>
		  <tr>
			<td class="title">&nbsp;&nbsp;<b>사용자 관리 - 상세정보 보기</b>&nbsp;&nbsp;</td>
		  </tr>
	    </table>  
	    <br>	  	    
	  	<table style="background-color: YellowGreen">
	  	  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">사용자 ID</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%=user.getUserId()%>
			</td>
		  </tr>
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">이름</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%=user.getName()%>
			</td>
		  </tr>
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">이메일 주소</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				${user.email} <%-- <%=user.getEmail()%> --%>
			</td>
		  </tr>		  
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">전화번호</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				${user.phone} <%-- <%=user.getPhone()%> --%>
			</td>
		  </tr>		  
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">커뮤니티</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<a href="<c:url value='/community/view'>
					   <c:param name='commId' value='<%=Integer.toString(user.getCommId())%>'/>
			 		 </c:url>">
					${user.commName} <%-- <%=user.commName()%> --%>
				</a>
			</td>
		  </tr>	
	 	</table>
	    <br>
	    <a href="<c:url value='/user/update'>
	     		   <c:param name='userId' value='<%=user.getUserId()%>'/>
			 	 </c:url>">수정</a> &nbsp;
 	    <a href="<c:url value='/user/delete'>
				   <c:param name='userId' value='<%=user.getUserId()%>'/>
			 	 </c:url>" onclick="return userRemove();">삭제</a> &nbsp;
 	    <a href="<c:url value='/user/list' />">목록</a>
 	    <br><br>	   
 	    
 	    <!-- 수정 또는 삭제가  실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
        <c:if test="${updateFailed || deleteFailed}">
	      <font color="red"><c:out value="${exception.getMessage()}" /></font>
	    </c:if>    
	  </td>
	</tr>
  </table>  
</body>
</html>