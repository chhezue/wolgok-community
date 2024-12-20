<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>모임 멤버 목록</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-['Noto_Sans_KR']">

<main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="bg-white rounded-lg shadow">
        <div class="px-6 py-5 border-b border-gray-200">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-2xl font-bold text-gray-900">${club.clubName}</h1>
                    <p class="mt-1 text-sm text-gray-500">전체 멤버 ${club.memberCount}명</p>
                </div>
            </div>
        </div>

        <div class="px-6 py-4 border-b border-gray-200">
            <div class="flex flex-col sm:flex-row justify-between space-y-4 sm:space-y-0 sm:space-x-4">
                <div class="flex space-x-4">
                    <select name="memberType" class="rounded-md border-gray-300 text-base focus:ring-custom focus:border-custom">
                        <option value="all" ${param.memberType == 'all' ? 'selected' : ''}>전체 멤버</option>
                        <option value="leader" ${param.memberType == 'leader' ? 'selected' : ''}>모임장</option>
                        <option value="member" ${param.memberType == 'member' ? 'selected' : ''}>일반 멤버</option>
                    </select>
                </div>
                <div class="relative">
                    <input type="text" name="searchKeyword" value="${param.searchKeyword}"
                           placeholder="멤버 검색" class="w-full sm:w-80 rounded-md border-gray-300 pl-10 focus:ring-custom focus:border-custom"/>
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <i class="fas fa-search text-gray-400"></i>
                    </div>
                </div>
            </div>
        </div>

        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                <tr>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">멤버</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">역할</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">가입일</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">최근 활동</th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                <c:forEach var="member" items="${members}">
                    <tr>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <div class="flex items-center cursor-pointer hover:bg-gray-50">
                                <div class="h-10 w-10 flex-shrink-0">
                                    <img class="h-10 w-10 rounded-full object-cover"
                                         src="${member.profileImageUrl}"
                                         alt="${member.memberName}의 프로필"/>
                                </div>
                                <div class="ml-4">
                                    <div class="text-sm font-medium text-gray-900">${member.memberName}</div>
                                </div>
                            </div>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full 
                                ${member.memberId == club.leaderId ? 'bg-custom text-white' : 'bg-gray-100 text-gray-800'}">
                                    ${member.memberId == club.leaderId ? '모임장' : '일반 멤버'}
                            </span>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                            <fmt:formatDate value="${member.createdAt}" pattern="yyyy.MM.dd"/>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <div class="flex items-center justify-between">
                                <span class="text-sm text-gray-500">
                                    <fmt:formatDate value="${member.lastActivityAt}" pattern="yyyy.MM.dd"/>
                                </span>
                                <c:if test="${sessionScope.memberId == member.memberId}">
                                    <!-- 경로 설정 실패: 수정 필요 -->
                                    <button onclick="if(confirm('정말 탈퇴하시겠습니까?')) location.href='<c:url value=''/>'"
                                            class="ml-4 px-3 py-1 text-sm text-red-600 hover:text-red-800 font-medium rounded-md border border-red-600 hover:border-red-800">
                                        탈퇴하기
                                    </button>
                                </c:if>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="px-6 py-4 border-t border-gray-200">
            <nav class="flex items-center justify-between">
                <div class="flex-1 flex justify-between sm:justify-end">
                    <c:if test="${currentPage > 1}">
                        <button onclick="location.href='?page=${currentPage-1}'"
                                class="!rounded-button relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                            이전
                        </button>
                    </c:if>
                    <div class="flex items-center mx-4">
                        <span class="text-sm text-gray-700">${currentPage}</span>
                        <span class="mx-2 text-gray-500">/</span>
                        <span class="text-sm text-gray-700">${totalPages}</span>
                    </div>
                    <c:if test="${currentPage < totalPages}">
                        <button onclick="location.href='?page=${currentPage+1}'"
                                class="!rounded-button relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                            다음
                        </button>
                    </c:if>
                </div>
            </nav>
        </div>
    </div>
</main>
</body>
</html>