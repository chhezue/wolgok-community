<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>모임 수정 | MOIM</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[&#39;Noto_Sans_KR&#39;]">
<<<<<<< Updated upstream
=======
<jsp:include page="../header.jsp"/>
>>>>>>> Stashed changes
<div class="min-h-screen flex flex-col">
    <main class="flex-grow">
        <div class="max-w-3xl mx-auto py-10 px-4 sm:px-6 lg:px-8">
            <div class="mb-8">
                <h1 class="text-2xl font-bold text-gray-900">모임 수정</h1>
            </div>

<<<<<<< Updated upstream
            <!-- 경로 설정 실패: 수정 필요 -->
            <form action="<c:url value=''/>" method="post" enctype="multipart/form-data" class="space-y-8">
=======
            <form action="<c:url value='/club/update'/>" method="post" enctype="multipart/form-data" class="space-y-8">
>>>>>>> Stashed changes
                <input type="hidden" name="clubId" value="${club.clubId}"/>
                <div class="space-y-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">모임 이름</label>
                        <input type="text" name="clubName" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm bg-gray-100"
                               value="${club.clubName}" disabled=""/>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700">모임 대표 이미지</label>
                        <div class="mt-1 flex justify-center px-6 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-md">
                            <div class="space-y-1 text-center">
                                <i class="fas fa-image text-gray-400 text-3xl mb-3"></i>
                                <div class="flex text-sm text-gray-600">
                                    <label for="file-upload"
                                           class="relative cursor-pointer bg-white rounded-md font-medium text-custom hover:text-custom-600">
                                        <span>이미지 업로드</span>
                                        <input id="file-upload" name="thumbnail" type="file" class="sr-only" accept="image/*"/>
                                    </label>
                                </div>
                                <p class="text-xs text-gray-500">PNG, JPG, GIF up to 10MB</p>
                            </div>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700">모임 설명</label>
                        <div class="mt-1">
                            <textarea name="description" rows="4" class="block w-full border-gray-300 rounded-md shadow-sm"
                                      placeholder="모임에 대한 설명을 입력해주세요.">${club.description}</textarea>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700">최대 인원 (50명까지)</label>
                        <input type="number" name="maxMembers" min="2" max="50"
                               class="mt-1 block w-32 border-gray-300 rounded-md shadow-sm" value="${club.maxMembers}"/>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-2">관심사 카테고리</label>
                        <div class="grid grid-cols-2 md:grid-cols-3 gap-3">
                            <c:forEach var="interest" items="${interests}">
                                <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                    <input type="checkbox" name="hashtags" value="${interest}"
                                           class="h-4 w-4 text-custom border-gray-300 rounded"
                                           <c:if test="${club.hashtags.contains(interest)}">checked</c:if>/>
                                    <span class="ml-2 text-sm">${interest}</span>
                                </label>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="flex justify-end space-x-3 mt-8 pt-8 border-t border-gray-200">
                    <div class="flex-1">
<<<<<<< Updated upstream
                        <!-- 경로 설정 실패: 수정 필요 -->
                        <button type="button" onclick="if(confirm('정말 삭제하시겠습니까?')) location.href='<c:url value=''/>'"
=======
                        <button type="button" onclick="if(confirm('정말 삭제하시겠습니까?')) location.href='<c:url value='/club/delete?clubId=${club.clubId}'/>'"
>>>>>>> Stashed changes
                                class="w-full !rounded-button px-4 py-2 border border-red-300 shadow-sm text-sm font-medium rounded-md text-red-700 bg-white hover:bg-red-50">
                            모임 삭제하기
                        </button>
                    </div>
                    <button type="button" onclick="history.back()"
                            class="w-32 !rounded-button px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                        취소
                    </button>
                    <button type="submit"
                            class="w-32 !rounded-button px-4 py-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-custom hover:bg-custom-600">
                        저장
                    </button>
                </div>
            </form>
        </div>
    </main>
</div>
</body>
</html>
