<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>나의 모임 관리</title>
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
                        </div>
                    </div>
                </div>
            </div>
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
</body>
</html>
