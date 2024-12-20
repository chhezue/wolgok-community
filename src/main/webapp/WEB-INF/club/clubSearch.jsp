<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>모임 찾기</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[&#39;Noto_Sans_KR&#39;]">

<main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <form action="<c:url value='/club/search'/>" method="get">
        <div class="flex gap-8">
            <div class="w-72 flex-shrink-0">
                <div class="bg-white rounded-lg shadow p-6">
                    <h2 class="text-lg font-medium text-gray-900 mb-4">필터</h2>
                    <div class="space-y-6">
                        <div class="mt-6">
                            <h3 class="text-sm font-medium text-gray-900 mb-2">관심사</h3>
                            <div class="space-y-2">
                                <c:forEach var="interest" items="${interests}">
                                    <label class="flex items-center">
                                        <input type="checkbox" name="interests" value="${interest}"
                                               class="rounded border-gray-300 text-custom"
                                               <c:if test="${selectedInterests.contains(interest)}">checked</c:if>/>
                                        <span class="ml-2 text-sm text-gray-700">${interest}</span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="mt-6">
                            <h3 class="text-sm font-medium text-gray-900 mb-2">참가 인원</h3>
                            <div class="space-y-2">
                                <label class="flex items-center">
                                    <input type="radio" name="memberRange" value="5-15"
                                           class="rounded border-gray-300 text-custom"
                                           <c:if test="${selectedMemberRange == '5-15'}">checked</c:if>/>
                                    <span class="ml-2 text-sm text-gray-700">5-15명</span>
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="w-full mt-6 bg-custom text-white px-4 py-2 rounded-md text-sm font-medium">
                            모임 찾기
                        </button>
                    </div>
                </div>
            </div>

            <div class="flex-1">
                <div class="flex justify-end mb-4">
                    <select name="sortBy" class="rounded-md border-gray-300 text-sm" onchange="this.form.submit()">
                        <option value="recommended" ${selectedSortBy == 'recommended' ? 'selected' : ''}>추천순</option>
                        <option value="newest" ${selectedSortBy == 'newest' ? 'selected' : ''}>최신순</option>
                        <option value="popular" ${selectedSortBy == 'popular' ? 'selected' : ''}>인기순</option>
                    </select>
                </div>

                <div class="grid grid-cols-3 gap-6">
                    <c:forEach var="club" items="${clubs}">
                        <div class="bg-white rounded-lg shadow overflow-hidden">
                            <img src="${club.thumbnail}" class="w-full h-48 object-cover object-center" alt="모임 이미지"/>
                            <div class="p-4">
                                <h3 class="text-lg font-medium text-gray-900">${club.clubName}</h3>
                                <p class="mt-1 text-sm text-gray-500">${club.description}</p>
                                <div class="mt-4 space-y-2">
                                    <div class="flex items-center text-sm text-gray-500">
                                        <i class="far fa-clock mr-2"></i>개설일: ${club.createdAt}
                                    </div>
                                    <div class="flex items-center text-sm text-gray-500">
                                        <i class="far fa-users mr-2"></i>${club.memberCount}/${club.maxMembers}명
                                    </div>
                                    <div class="mt-4">
                                        <a href="<c:url value='/club/clubInfo?clubId=${club.clubId}'/>"
                                           class="w-full bg-custom text-white px-4 py-2 rounded-md text-sm font-medium hover:bg-opacity-90 inline-block text-center">
                                            둘러보기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </form>
</main>
</body>
</html>
