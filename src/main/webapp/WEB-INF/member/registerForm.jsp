<<<<<<< HEAD
<!DOCTYPE html><html lang="ko"><head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>회원가입</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
<link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
<script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
<script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
        data-border-radius="small"></script>
</head>
<body class="bg-gray-50 min-h-screen">
<div class="min-h-screen flex flex-col justify-center py-12 sm:px-6 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-2xl">
        <img class="mx-auto h-12 w-auto" src="https://ai-public.creatie.ai/gen_page/logo_placeholder.png" alt="Logo"/>
        <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">회원가입</h2>
    </div>
    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-2xl">
        <div class="bg-white py-8 px-6 shadow sm:rounded-lg sm:px-12">
            <form class="space-y-6" id="signupForm">
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">이름</label>
                    <div class="mt-1">
                        <input id="name" name="name" type="text" required=""
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                    </div>
                </div>
                <div>
                    <label for="nickname" class="block text-sm font-medium text-gray-700">닉네임</label>
                    <div class="mt-1 flex space-x-2">
                        <input id="nickname" name="nickname" type="text" required=""
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                        <button type="button"
                                class="!rounded-button inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium text-white bg-custom hover:bg-custom/90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                            중복확인
                        </button>
                    </div>
                </div>
                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700">비밀번호</label>
                    <div class="mt-1">
                        <input id="password" name="password" type="password" required=""
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                    </div>
                </div>
                <div>
                    <label for="password_confirmation" class="block text-sm font-medium text-gray-700">비밀번호 확인</label>
                    <div class="mt-1">
                        <input id="password_confirmation" name="password_confirmation" type="password" required=""
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                    </div>
                    <p id="password-match" class="mt-1 text-sm text-red-600 hidden">비밀번호가 일치하지 않습니다.</p>
                </div>
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">이메일</label>
                    <div class="mt-1">
                        <input id="email" name="email" type="email" required=""
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                    </div>
                    <p id="email-error" class="mt-1 text-sm text-red-600 hidden">올바른 이메일 형식이 아닙니다.</p>
                </div>
                <div>
                    <label for="phone" class="block text-sm font-medium text-gray-700">전화번호</label>
                    <div class="mt-1">
                        <input id="phone" name="phone" type="tel" required="" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                               placeholder="010-0000-0000"
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                    </div>
                    <p id="phone-error" class="mt-1 text-sm text-red-600 hidden">올바른 전화번호 형식이 아닙니다.</p>
                </div>
                <div>
                    <label for="introduction" class="block text-sm font-medium text-gray-700">자기소개</label>
                    <div class="mt-1">
                        <textarea id="introduction" name="introduction" rows="3" maxlength="100"
                                  class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"></textarea>
                    </div>
                    <p class="mt-1 text-sm text-gray-500"><span id="char-count">0</span>/100자</p>
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700">프로필 이미지</label>
                    <div class="mt-1 flex items-center space-x-4">
                        <div class="h-24 w-24 rounded-full overflow-hidden bg-gray-100">
                            <img id="preview"
                                 src="https://creatie.ai/ai/api/search-image?query=A minimalist placeholder avatar image with a simple geometric pattern on a light background, suitable for a default profile picture&width=96&height=96&orientation=squarish&flag=8f0e994d-6a15-47bd-a784-4d576d8c40af&flag=9f05f969-21b0-49b1-9aa3-5ec3c45c6ce5"
                                 alt="Profile preview" class="h-full w-full object-cover"/>
                        </div>
                        <input type="file" id="profile_image" name="profile_image" accept="image/*" class="hidden"/>
                        <button type="button" onclick="document.getElementById('profile_image').click()"
                                class="!rounded-button inline-flex justify-center py-2 px-4 border border-gray-300 shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                            이미지 업로드
                        </button>
                    </div>
                </div>
                <div>
                    <label for="website" class="block text-sm font-medium text-gray-700">웹사이트</label>
                    <div class="mt-1">
                        <input id="website" name="website" type="url" placeholder="https://"
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"/>
                    </div>
                </div>
                <div class="flex space-x-3">
                    <button type="submit"
                            class="!rounded-button flex-1 justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium text-white bg-custom hover:bg-custom/90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                        가입하기
                    </button>
                    <button type="button"
                            class="!rounded-button flex-1 justify-center py-2 px-4 border border-gray-300 shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                        취소
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    document.getElementById('profile_image').addEventListener('change', function (e) {
        const file = e.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('preview').src = e.target.result;
            }
            reader.readAsDataURL(file);
        }
    });
    document.getElementById('introduction').addEventListener('input', function (e) {
        const count = e.target.value.length;
        document.getElementById('char-count').textContent = count;
    });
    document.getElementById('password_confirmation').addEventListener('input', function (e) {
        const password = document.getElementById('password').value;
        const confirmation = e.target.value;
        const matchMessage = document.getElementById('password-match');
        matchMessage.classList.toggle('hidden', password === confirmation);
    });
    document.getElementById('email').addEventListener('input', function (e) {
        const email = e.target.value;
        const emailError = document.getElementById('email-error');
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        emailError.classList.toggle('hidden', emailRegex.test(email));
    });
    document.getElementById('phone').addEventListener('input', function (e) {
        const phone = e.target.value;
        const phoneError = document.getElementById('phone-error');
        const phoneRegex = /^010-\d{4}-\d{4}$/;
        phoneError.classList.toggle('hidden', phoneRegex.test(phone));
        let value = e.target.value.replace(/\D/g, '');
        if (value.length >= 3) {
            value = value.slice(0, 3) + '-' + value.slice(3);
        }
        if (value.length >= 8) {
            value = value.slice(0, 8) + '-' + value.slice(8);
        }
        e.target.value = value.slice(0, 13);
    });
    document.getElementById('signupForm').addEventListener('submit', function (e) {
        e.preventDefault();
        alert('회원가입이 완료되었습니다.');
    });
</script>
=======
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
</head>
<body>	
<!-- 화면 로드 시 서버로부터 커뮤니티 목록을 가져와 commSelect 메뉴 생성 -->
<br>
<!-- registration form  -->
<form name="form" method="POST" action="../register">
  <table style="width: 100%">
    <tr>
      <td width="20"></td>
	  <td>
	    <table>
		  <tr>
		    <td class="title">&nbsp;&nbsp;<b>사용자 관리 - 회원 가입</b>&nbsp;&nbsp;</td>
		  </tr>
	    </table>  	 
	    <!-- 회원가입이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
        <c:if test="${registerFailed}">
	      <font color="red"><c:out value="${exception.getMessage()}" /></font>
	    </c:if>
	    <br>	  
	    <table style="background-color: YellowGreen">
	      <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">이름</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="memberName">
		  </td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password">
			</td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호 확인</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password2">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">닉네임</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="nickname">
		  </td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">이메일 주소</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="email">
			</td>
		  </tr>	
	    </table>
	    <br>
	    <table style="width: 100%">
		  <tr>
			<td align="left">
			<button type="submit">회원가입</button>
			</td>
		  </tr>
	    </table>
	  </td>
    </tr>
  </table>  
</form>
</body>
</html>
>>>>>>> ye0nuu
