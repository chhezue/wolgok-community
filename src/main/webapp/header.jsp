<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>모임 서비스</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#6B46C1" data-border-radius="small"></script>
</head>
<body class="font-[&#39;Noto_Sans_KR&#39;]">
<header class="relative bg-white border-b border-gray-200">
    <nav class="mx-auto max-w-8xl px-6 lg:px-8" aria-label="Top">
        <div class="flex w-full items-center justify-between py-6">
            <div class="flex items-center">
                <a href="/">
                    <img class="h-10 w-auto" src="https://ai-public.creatie.ai/gen_page/logo_placeholder.png" alt="로고"/>
                </a>
            </div>

            <div class="hidden lg:flex lg:items-center lg:space-x-6">
                <a href="/mypage" class="text-sm font-medium text-gray-700 hover:text-custom">
                    <i class="far fa-user mr-2"></i>마이페이지
                </a>
                <a href="/my-groups" class="text-sm font-medium text-gray-700 hover:text-custom">
                    <i class="far fa-calendar-alt mr-2"></i>나의 모임
                </a>
                <a href="/find-groups" class="text-sm font-medium text-purple-600 hover:text-purple-500"><i class="far fa-compass mr-2"></i><span class="font-bold">모임 찾아보기</span></a>
            </div>

            <div class="flex items-center space-x-4">
                <a href="/login" class="text-sm font-medium text-gray-700 hover:text-custom">
                    로그인
                </a>
                <a href="/signup" class="!rounded-button inline-flex items-center justify-center bg-purple-600 px-4 py-2 text-sm font-medium text-white hover:bg-purple-500 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:ring-offset-2">
                    회원가입
                </a>
                <button type="button" class="lg:hidden inline-flex items-center justify-center rounded-md p-2 text-gray-700 hover:text-custom">
                    <span class="sr-only">메뉴 열기</span>
                    <i class="fas fa-bars text-xl"></i>
                </button>
            </div>
        </div>

        <div class="lg:hidden absolute top-full left-0 w-full bg-white border-t border-gray-200 py-4 px-6 space-y-4 hidden">
            <a href="/mypage" class="block text-base font-medium text-gray-700 hover:text-custom">
                <i class="far fa-user mr-2"></i>마이페이지
            </a>
            <a href="/my-groups" class="block text-base font-medium text-gray-700 hover:text-custom">
                <i class="far fa-calendar-alt mr-2"></i>나의 모임
            </a>
            <a href="/find-groups" class="block text-base font-medium text-purple-600 hover:text-purple-500"><i class="far fa-compass mr-2"></i><span class="font-bold">모임 찾아보기</span></a>
        </div>
    </nav>
</header>

<script>
    document.querySelector('button[type="button"]').addEventListener('click', function() {
        const mobileMenu = document.querySelector('.lg\\:hidden.absolute');
        mobileMenu.classList.toggle('hidden');
    });
</script>
</body></html>