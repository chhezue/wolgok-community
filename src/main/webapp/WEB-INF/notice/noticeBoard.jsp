<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-['Noto_Sans_KR']">
<<<<<<< HEAD
<jsp:include page="header.jsp"/>
=======
<jsp:include page="../header.jsp"/>
>>>>>>> ye0nuu

<main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="bg-white rounded-lg shadow">
        <div class="px-6 py-5 border-b border-gray-200">
            <h1 class="text-2xl font-bold text-gray-900">공지사항</h1>
        </div>

        <div class="px-6 py-4 border-b border-gray-200">
            <div class="flex flex-wrap gap-2">
                <button class="!rounded-button px-4 py-2 bg-custom text-white font-medium">전체</button>
                <button class="!rounded-button px-4 py-2 bg-white text-gray-700 border border-gray-300 hover:bg-gray-50">
                    정산
                </button>
                <button class="!rounded-button px-4 py-2 bg-white text-gray-700 border border-gray-300 hover:bg-gray-50">
                    정모
                </button>
                <button class="!rounded-button px-4 py-2 bg-white text-gray-700 border border-gray-300 hover:bg-gray-50">
                    중요
                </button>
                <button class="!rounded-button px-4 py-2 bg-white text-gray-700 border border-gray-300 hover:bg-gray-50">
                    기타
                </button>
                <button class="!rounded-button px-4 py-2 bg-white text-gray-700 border border-gray-300 hover:bg-gray-50">
                    투표
                </button>
            </div>
        </div>

        <div class="divide-y divide-gray-200">
            <div class="px-6 py-4 bg-blue-50">
                <div class="flex items-center gap-2 mb-2">
                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-red-100 text-red-800">중요</span>
                    <i class="fas fa-thumbtack text-custom"></i>
                </div>
                <h3 class="text-lg font-medium text-gray-900">2024년 상반기 모임 일정 안내</h3>
                <div class="mt-2 flex items-center text-sm text-gray-500">
                    <span>관리자</span>
                    <span class="mx-2">·</span>
                    <span>2024.01.15</span>
                    <span class="mx-2">·</span>
                    <span>조회 245</span>
                </div>
            </div>

            <div class="px-6 py-4">
                <div class="flex items-center gap-2 mb-2">
                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">정산</span>
                </div>
                <h3 class="text-lg font-medium text-gray-900">1월 모임 회비 정산 내역</h3>
                <div class="mt-2 flex items-center text-sm text-gray-500">
                    <span>총무</span>
                    <span class="mx-2">·</span>
                    <span>2024.01.10</span>
                    <span class="mx-2">·</span>
                    <span>조회 156</span>
                </div>
            </div>

            <div class="px-6 py-4">
                <div class="flex items-center gap-2 mb-2">
                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">정모</span>
                </div>
                <h3 class="text-lg font-medium text-gray-900">1월 정기모임 장소 변경 안내</h3>
                <div class="mt-2 flex items-center text-sm text-gray-500">
                    <span>총무</span>
                    <span class="mx-2">·</span>
                    <span>2024.01.05</span>
                    <span class="mx-2">·</span>
                    <span>조회 198</span>
                </div>
            </div>

            <div class="px-6 py-4">
                <div class="flex items-center gap-2 mb-2">
                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-purple-100 text-purple-800">투표</span>
                </div>
                <h3 class="text-lg font-medium text-gray-900">2월 정기모임 날짜 투표</h3>
                <div class="mt-2 flex items-center text-sm text-gray-500">
                    <span>관리자</span>
                    <span class="mx-2">·</span>
                    <span>2024.01.03</span>
                    <span class="mx-2">·</span>
                    <span>조회 167</span>
                </div>
            </div>
        </div>

        <div class="px-6 py-4 border-t border-gray-200">
            <nav class="flex items-center justify-center">
                <button class="!rounded-button relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium text-gray-700 bg-white hover:bg-gray-50">
                    이전
                </button>
                <span class="mx-4">
                            <button class="!rounded-button relative inline-flex items-center px-4 py-2 border border-custom text-sm font-medium bg-custom text-white">
                                1
                            </button>
                        </span>
                <button class="!rounded-button relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium text-gray-700 bg-white hover:bg-gray-50">
                    다음
                </button>
            </nav>
        </div>
    </div>
</main>
</body>
</html>
