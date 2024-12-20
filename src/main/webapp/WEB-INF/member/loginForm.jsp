<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html><html lang="ko"><head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>로그인</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
<link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
<script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
<script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
        data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[&#39;Noto_Sans_KR&#39;]">
<div class="min-h-screen flex flex-col justify-center py-12 sm:px-6 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-md">
        <img class="mx-auto h-12 w-auto" src="https://ai-public.creatie.ai/gen_page/logo_placeholder.png" alt="로고"/>
        <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">로그인</h2>
    </div>
    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
        <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
            <form class="space-y-6" action="<c:url value='/member/login' />" method="POST">
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">이메일</label>
                    <div class="mt-1 relative">
                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                            <i class="fas fa-envelope text-gray-400"></i>
                        </div>
                        <input id="email" name="email" type="email" required=""
                               class="appearance-none block w-full pl-10 pr-3 py-2 border border-gray-300 !rounded-button placeholder-gray-400 focus:outline-none focus:ring-custom focus:border-custom sm:text-sm"
                               placeholder="이메일을 입력하세요"/>
                    </div>
                </div>
                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700">비밀번호</label>
                    <div class="mt-1 relative">
                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                            <i class="fas fa-lock text-gray-400"></i>
                        </div>
                        <input id="password" name="password" type="password" required=""
                               class="appearance-none block w-full pl-10 pr-3 py-2 border border-gray-300 !rounded-button placeholder-gray-400 focus:outline-none focus:ring-custom focus:border-custom sm:text-sm"
                               placeholder="비밀번호를 입력하세요"/>
                    </div>
                </div>

                <div>
                    <button type="submit"
                            class="w-full flex justify-center py-2 px-4 border border-transparent !rounded-button shadow-sm text-sm font-medium text-white bg-custom hover:bg-custom/90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                        로그인
                    </button>
                    <!-- 로그인이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
        			<c:if test="${loginFailed}">
	  	  				<br><font color="red"><c:out value="다시 시도하세요." /></font><br>
	    			</c:if>
                </div>
            </form>
            <div class="mt-6">
                <div class="relative">
                    <div class="absolute inset-0 flex items-center">
                        <div class="w-full border-t border-gray-300"></div>
                    </div>
                    <div class="relative flex justify-center text-sm">
                        <span class="px-2 bg-white text-gray-500">또는</span>
                    </div>
                </div>
                <div class="mt-6 text-center">
                    <p class="text-sm text-gray-600">
                        아직 회원이 아니신가요?
                        <a href="<c:url value='/member/register/form' />" class="font-medium text-custom hover:text-custom/90">회원가입</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>