<<<<<<< HEAD
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
>>>>>>> ye0nuu
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>나의 모임 관리</title>
<<<<<<< HEAD
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[Noto Sans KR]">
<div class="min-h-screen">
    <jsp:include page="header.jsp"/>

    <main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="mb-8">
            <h1 class="text-2xl font-bold text-gray-900">나의 모임 관리</h1>
        </div>

        <div class="mb-8 flex flex-wrap gap-4 items-center justify-between">
            <div class="flex-1 min-w-[300px]">
                <div class="relative">
                    <input type="text" placeholder="모임명 검색"
                           class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-md focus:ring-custom focus:border-custom"/>
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <i class="fas fa-search text-gray-400"></i>
                    </div>
                </div>
            </div>
            <div class="flex gap-4">
                <select class="border border-gray-300 rounded-md focus:ring-custom focus:border-custom py-2 pl-3 pr-8">
                    <option value="">전체 역할</option>
                    <option value="leader">모임장</option>
                    <option value="member">일반 멤버</option>
                </select>
                <button class="bg-custom text-white px-4 py-2 rounded-md hover:bg-custom/90 flex items-center"><i
                        class="fas fa-plus mr-2"></i>모임 생성하기
                </button>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
            <div class="bg-white rounded-lg shadow overflow-hidden">
                <img src="https://creatie.ai/ai/api/search-image?query=A group of diverse people collaborating in a modern office space, discussing ideas around a table with laptops and notepads, showing teamwork and engagement&width=400&height=250&orientation=landscape&flag=8cad12cb-24a1-40bd-a8da-f2e8a18b114a&flag=648eec81-8fa1-4eec-b23e-11e4a7088928&flag=a411c964-d1cb-4127-b5ae-004c44ce1b91&flag=fbf9d9e5-547f-4609-9e9a-3877ac4e916d&flag=9a45d2ff-9aaa-44e9-a43f-deaab50f6da8"
                     alt="모임 이미지" class="w-full h-48 object-cover"/>
                <div class="p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-900">독서토론 모임</h3>
                        <span class="px-3 py-1 bg-custom text-white text-sm rounded-full">모임장</span>
                    </div>
                    <div class="space-y-2 mb-4">
                        <p class="text-sm text-gray-600"><i class="fas fa-users mr-2"></i>멤버 32명</p>
                        <p class="text-sm text-gray-600"><i class="fas fa-calendar mr-2"></i>가입일: 2024.01.15</p>
                    </div>
                    <div class="border-t pt-4">
                        <p class="text-sm text-gray-600 mb-4">최근 정모 일정: 2024.03.15</p>
                        <div class="flex space-x-3">
                            <button class="flex-1 bg-custom text-white py-2 !rounded-button hover:bg-custom/90">입장하기
                            </button>
                            <button class="flex-1 bg-gray-100 text-gray-700 py-2 !rounded-button hover:bg-gray-200">
                                수정하기
                            </button>
=======
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000" data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[Noto Sans KR]">
    <div class="min-h-screen">
        <nav class="bg-white shadow">
            <div class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between h-16">
                    <div class="flex">
                        <div class="flex-shrink-0 flex items-center">
                            <img class="h-8 w-auto" src="https://ai-public.creatie.ai/gen_page/logo_placeholder.png" alt="로고"/>
                        </div>
                    </div>
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <div class="flex items-center space-x-4">
                                <img class="h-8 w-8 rounded-full" src="<%=  %>" alt="프로필"/>
                                <span class="text-gray-700"><%=  %>님</span>
                            </div>
>>>>>>> ye0nuu
                        </div>
                    </div>
                </div>
            </div>
<<<<<<< HEAD

            <div class="bg-white rounded-lg shadow overflow-hidden">
                <img src="https://creatie.ai/ai/api/search-image?query=A group of people exercising together in a modern gym setting, showing various workout activities and positive energy&width=400&height=250&orientation=landscape&flag=9a1966b3-f068-49e6-a555-5b3f28ec8e7f&flag=bbf14465-a0cf-4d47-9086-372cabf34872&flag=7a4ae9ed-2c15-4716-92c4-ec57c992b658&flag=5f3d9976-d7b1-4e37-8084-585bb60e1c3d&flag=ffffae32-7818-46a7-ba7b-219c7be2023b"
                     alt="모임 이미지" class="w-full h-48 object-cover"/>
                <div class="p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-900">헬스 동호회</h3>
                        <span class="px-3 py-1 bg-gray-100 text-gray-600 text-sm rounded-full">일반 멤버</span>
                    </div>
                    <div class="space-y-2 mb-4">
                        <p class="text-sm text-gray-600"><i class="fas fa-users mr-2"></i>멤버 45명</p>
                        <p class="text-sm text-gray-600"><i class="fas fa-calendar mr-2"></i>가입일: 2024.02.01</p>
                    </div>
                    <div class="border-t pt-4">
                        <p class="text-sm text-gray-600 mb-4">최근 정모 일정: 2024.03.17</p>
                        <div class="flex space-x-3">
                            <button class="flex-1 bg-custom text-white py-2 !rounded-button hover:bg-custom/90">입장하기
                            </button>
                            <button class="flex-1 border border-red-500 text-red-500 py-2 !rounded-button hover:bg-red-50">
                                탈퇴하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg-white rounded-lg shadow overflow-hidden">
                <img src="https://creatie.ai/ai/api/search-image?query=A group of people enjoying a cooking class in a modern kitchen, preparing food together with professional equipment&width=400&height=250&orientation=landscape&flag=e6c68031-cb1a-4e3a-9574-39f345a37aaf&flag=c42f8f20-b0db-49ce-96bf-7b5a6185202f&flag=16b616a0-9820-48fd-95ed-5d7f9732d256&flag=42b030ca-d1a8-4d42-96e5-4525c1245b79&flag=1cea15ec-ebea-4471-8875-490653293ab2"
                     alt="모임 이미지" class="w-full h-48 object-cover"/>
                <div class="p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-900">요리 연구회</h3>
                        <span class="px-3 py-1 bg-gray-100 text-gray-600 text-sm rounded-full">일반 멤버</span>
                    </div>
                    <div class="space-y-2 mb-4">
                        <p class="text-sm text-gray-600"><i class="fas fa-users mr-2"></i>멤버 28명</p>
                        <p class="text-sm text-gray-600"><i class="fas fa-calendar mr-2"></i>가입일: 2024.01.20</p>
                    </div>
                    <div class="border-t pt-4">
                        <p class="text-sm text-gray-600 mb-4">최근 정모 일정: 2024.03.20</p>
                        <div class="flex space-x-3">
                            <button class="flex-1 bg-custom text-white py-2 !rounded-button hover:bg-custom/90">입장하기
                            </button>
                            <button class="flex-1 border border-red-500 text-red-500 py-2 !rounded-button hover:bg-red-50">
                                탈퇴하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="flex justify-center">
            <nav class="inline-flex rounded-md shadow">
                <button class="px-3 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                    이전
                </button>
                <button class="px-3 py-2 border-t border-b border-gray-300 bg-custom text-sm font-medium text-white">
                    1
                </button>
                <button class="px-3 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                    2
                </button>
                <button class="px-3 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                    3
                </button>
                <button class="px-3 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                    다음
                </button>
            </nav>
        </div>
    </main>
</div>

<div id="leaveConfirmModal" class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
    <div class="bg-white p-6 rounded-lg max-w-sm w-full mx-4">
        <h3 class="text-lg font-medium text-gray-900 mb-4">모임 탈퇴 확인</h3>
        <p class="text-sm text-gray-500 mb-6">정말로 이 모임을 탈퇴하시겠습니까? 탈퇴 후에는 모임의 활동 내역을 볼 수 없습니다.</p>
        <div class="flex space-x-3">
            <button class="flex-1 bg-gray-100 text-gray-700 py-2 !rounded-button hover:bg-gray-200"
                    onclick="document.getElementById('leaveConfirmModal').classList.add('hidden')">취소
            </button>
            <button class="flex-1 bg-red-500 text-white py-2 !rounded-button hover:bg-red-600">탈퇴하기</button>
        </div>
    </div>
</div>
=======
        </nav>

        <main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <div class="mb-8">
                <h1 class="text-2xl font-bold text-gray-900">나의 모임 관리</h1>
            </div>

            <div class="mb-8 flex flex-wrap gap-4 items-center justify-between">
                <div class="flex-1 min-w-[300px]">
                    <div class="relative">
                        <input type="text" placeholder="모임명 검색" class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-md focus:ring-custom focus:border-custom"/>
                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                            <i class="fas fa-search text-gray-400"></i>
                        </div>
                    </div>
                </div>
                <div class="flex gap-4">
                    <select class="border border-gray-300 rounded-md focus:ring-custom focus:border-custom py-2 pl-3 pr-8">
                        <option value="">전체 역할</option>
                        <option value="leader">모임장</option>
                        <option value="member">일반 멤버</option>
                    </select>
                <button class="bg-custom text-white px-4 py-2 rounded-md hover:bg-custom/90 flex items-center"><i class="fas fa-plus mr-2"></i>모임 생성하기</button></div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
                <c:forEach var="group" items="${joinedClubs}">
                    <div class="bg-white rounded-lg shadow overflow-hidden">
                        <img src="${group.thumbnail}" alt="모임 이미지" class="w-full h-48 object-cover"/>
                        <div class="p-6">
                            <div class="flex items-center justify-between mb-4">
                                <h3 class="text-lg font-semibold text-gray-900">${group.clubName}</h3>
                                <span class="px-3 py-1 <%=  %> text-white text-sm rounded-full">모임장/일반멤버</span>
                            </div>
                            <div class="space-y-2 mb-4">
                                <p class="text-sm text-gray-600"><i class="fas fa-users mr-2"></i>멤버 ${group.members.length}명</p>
                                <p class="text-sm text-gray-600"><i class="fas fa-calendar mr-2"></i>개설일: ${group.createdAt}</p>
                            </div>
                            <div class="border-t pt-4">
                                <p class="text-sm text-gray-600 mb-4">최근 정모 일정: <%=  %></p>
                                <div class="flex space-x-3">
                                    <button class="flex-1 bg-custom text-white py-2 !rounded-button hover:bg-custom/90">입장하기</button>
                                    <button class="flex-1 <%=  %> text-gray-700 py-2 !rounded-button hover:bg-gray-200">탈퇴하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="flex justify-center">
                <nav class="inline-flex rounded-md shadow">
                    <button class="px-3 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        이전
                    </button>
                    <button class="px-3 py-2 border-t border-b border-gray-300 bg-custom text-sm font-medium text-white">
                        1
                    </button>
                    <button class="px-3 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        2
                    </button>
                    <button class="px-3 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        3
                    </button>
                    <button class="px-3 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        다음
                    </button>
                </nav>
            </div>
        </main>
    </div>

    <div id="leaveConfirmModal" class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
        <div class="bg-white p-6 rounded-lg max-w-sm w-full mx-4">
            <h3 class="text-lg font-medium text-gray-900 mb-4">모임 탈퇴 확인</h3>
            <p class="text-sm text-gray-500 mb-6">정말로 이 모임을 탈퇴하시겠습니까? 탈퇴 후에는 모임의 활동 내역을 볼 수 없습니다.</p>
            <div class="flex space-x-3">
                <button class="flex-1 bg-gray-100 text-gray-700 py-2 !rounded-button hover:bg-gray-200" onclick="document.getElementById('leaveConfirmModal').classList.add('hidden')">취소</button>
                <button class="flex-1 bg-red-500 text-white py-2 !rounded-button hover:bg-red-600">탈퇴</button>
            </div>
        </div>
    </div>
>>>>>>> ye0nuu
</body>
</html>
