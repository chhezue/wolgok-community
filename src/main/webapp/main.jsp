<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>월곡 소모임</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000" data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-sans">
    <jsp:include page="header.jsp" />

    <main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-12">
            <div class="bg-white rounded-lg shadow p-6">
                <h2 class="text-xl font-bold mb-6">실시간 인기 모임</h2>
                <div class="space-y-4">
                    <div class="flex items-center p-4 bg-gray-50 rounded-lg">
                        <span class="text-2xl font-bold text-custom mr-4">1</span>
                        <div class="flex-1">
                            <h3 class="font-medium">월곡 독서 모임</h3>
                            <p class="text-sm text-gray-500">멤버 32명 · 독서/문화 <span class="ml-2"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#독서토론</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#인문학</span></span></p>
                        </div>
                        <span class="text-green-500 text-sm"><i class="fas fa-arrow-up"></i> 2</span>
                    </div>
                    <div class="flex items-center p-4 bg-gray-50 rounded-lg">
                        <span class="text-2xl font-bold text-custom mr-4">2</span>
                        <div class="flex-1">
                            <h3 class="font-medium">월곡 등산 동호회</h3>
                            <p class="text-sm text-gray-500">멤버 28명 · 운동/건강 <span class="ml-2"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#등산</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#건강</span></span></p>
                        </div>
                        <span class="text-red-500 text-sm"><i class="fas fa-arrow-down"></i> 1</span>
                    </div>
                    <div class="flex items-center p-4 bg-gray-50 rounded-lg">
                        <span class="text-2xl font-bold text-custom mr-4">3</span>
                        <div class="flex-1">
                            <h3 class="font-medium">월곡 사진 동호회</h3>
                            <p class="text-sm text-gray-500">멤버 25명 · 취미/예술 <span class="ml-2"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#사진</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#예술</span></span></p>
                        </div>
                        <span class="text-gray-500 text-sm">-</span>
                    </div>
                </div>
            </div>

            <div class="bg-white rounded-lg shadow p-6">
                <h2 class="text-xl font-bold mb-6">신규 모임</h2>
                <div class="grid grid-cols-2 gap-4">
                    <div class="relative">
                        <img src="https://creatie.ai/ai/api/search-image?query=A group of people having a book club meeting in a cozy cafe setting with warm lighting, books scattered on the table, and engaged participants discussing literature. The scene captures an intimate and intellectual atmosphere&width=300&height=200&orientation=landscape&flag=e7fd8b71-3798-4711-9b1e-13224b089360&flag=0b904511-cc7f-4c45-9ae0-76b7988c46c9" alt="독서 모임" class="w-full h-32 object-cover rounded-lg"/>
                        <div class="mt-2">
                            <h3 class="font-medium">월곡 북클럽</h3>
                            <p class="text-sm text-gray-500">2024.02.15 개설 <div class="mt-1"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#독서</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#토론</span></div></p>
                        </div>
                    </div>
                    <div class="relative">
                        <img src="https://creatie.ai/ai/api/search-image?query=A group of people practicing yoga in a bright, modern studio with minimalist decor. Natural light streams through large windows, creating a peaceful and serene atmosphere perfect for meditation and exercise&width=300&height=200&orientation=landscape&flag=17de54c0-7c92-4dc4-91e3-440718258af5&flag=c2b8438e-cf2b-43e7-9136-7556f6826cbd" alt="요가 모임" class="w-full h-32 object-cover rounded-lg"/>
                        <div class="mt-2">
                            <h3 class="font-medium">월곡 요가 모임</h3>
                            <p class="text-sm text-gray-500">2024.02.14 개설 <div class="mt-1"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#요가</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#명상</span></div></p>
                        </div>
                    </div>
                    <div class="relative">
                        <img src="https://creatie.ai/ai/api/search-image?query=A group of people enjoying a cooking class in a modern kitchen, preparing dishes together with professional equipment. The scene shows collaboration and learning in a clean, well-lit environment&width=300&height=200&orientation=landscape&flag=3218df2f-0152-4c05-9c43-95077e94118a&flag=d0f7d52f-e95c-409a-9e30-40746250cb35" alt="요리 모임" class="w-full h-32 object-cover rounded-lg"/>
                        <div class="mt-2">
                            <h3 class="font-medium">월곡 쿠킹클래스</h3>
                            <p class="text-sm text-gray-500">2024.02.13 개설 <div class="mt-1"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#요리</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#맛집</span></div></p>
                        </div>
                    </div>
                    <div class="relative">
                        <img src="https://creatie.ai/ai/api/search-image?query=A group of people painting together in an art studio, with canvases, easels, and art supplies visible. The space is filled with natural light and creative energy&width=300&height=200&orientation=landscape&flag=cf81cd74-346c-47dc-911e-92acce07ae2c&flag=bb703456-a2c5-4a09-abce-123273273fb1" alt="미술 모임" class="w-full h-32 object-cover rounded-lg"/>
                        <div class="mt-2">
                            <h3 class="font-medium">월곡 아트 클래스</h3>
                            <p class="text-sm text-gray-500">2024.02.12 개설 <div class="mt-1"><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600 mr-1">#미술</span><span class="inline-block bg-gray-100 rounded-full px-2 py-1 text-xs font-semibold text-gray-600">#창작</span></div></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="bg-white rounded-lg shadow p-6">
            <h2 class="text-xl font-bold mb-6">나의 모임</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <div class="border rounded-lg p-4">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="font-medium">월곡 독서 모임</h3>
                        <span class="bg-red-100 text-red-800 text-xs font-medium px-2.5 py-0.5 rounded">새 글 5</span>
                    </div>
                    <p class="text-sm text-gray-500 mb-4">다음 모임: 2024.02.20 (화) 19:00</p>
                    <div class="text-sm text-gray-700">
                        <p>- 이번 주 도서: &#34;사피엔스&#34;</p>
                        <p>- 장소: 월곡동 카페</p>
                    </div>
                </div>
                <div class="border rounded-lg p-4">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="font-medium">월곡 등산 동호회</h3>
                        <span class="bg-red-100 text-red-800 text-xs font-medium px-2.5 py-0.5 rounded">새 글 2</span>
                    </div>
                    <p class="text-sm text-gray-500 mb-4">다음 모임: 2024.02.18 (일) 08:00</p>
                    <div class="text-sm text-gray-700">
                        <p>- 등산 코스: 북한산</p>
                        <p>- 집결지: 월곡역 1번 출구</p>
                    </div>
                </div>
                <div class="border rounded-lg p-4">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="font-medium">월곡 사진 동호회</h3>
                        <span class="bg-gray-100 text-gray-800 text-xs font-medium px-2.5 py-0.5 rounded">새 글 없음</span>
                    </div>
                    <p class="text-sm text-gray-500 mb-4">다음 모임: 2024.02.25 (일) 14:00</p>
                    <div class="text-sm text-gray-700">
                        <p>- 촬영 장소: 경복궁</p>
                        <p>- 주제: 야경 촬영</p>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body></html>