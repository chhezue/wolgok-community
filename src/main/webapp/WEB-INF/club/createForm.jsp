<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>create Club!</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[&#39;Noto_Sans_KR&#39;]">
<div class="min-h-screen">

    <main class="max-w-3xl mx-auto py-10 px-4 sm:px-6 lg:px-8">
        <div class="space-y-8">
            <div>
                <h1 class="text-2xl font-bold text-gray-900">새로운 모임 만들기</h1>
                <p class="mt-1 text-sm text-gray-600">모임에 대한 정보를 입력해주세요.</p>
            </div>

            <form action="<c:url value='/club/create'/>" method="POST" enctype="multipart/form-data">
                <div class="space-y-6">
                    <div class="mb-6"><label class="block text-sm font-medium text-gray-700">모임 대표 사진</label>
                        <div class="mt-1 flex justify-center px-6 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-md">
                            <div class="space-y-1 text-center">
                                <svg class="mx-auto h-12 w-12 text-gray-400" stroke="currentColor" fill="none"
                                     viewBox="0 0 48 48">
                                    <path d="M28 8H12a4 4 0 00-4 4v20m32-12v8m0 0v8a4 4 0 01-4 4H12a4 4 0 01-4-4v-4m32-4l-3.172-3.172a4 4 0 00-5.656 0L28 28M8 32l9.172-9.172a4 4 0 015.656 0L28 28m0 0l4 4m4-24h8m-4-4v8m-12 4h.02"
                                          stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                                <div class="flex text-sm text-gray-600"><label for="file-upload"
                                                                               class="relative cursor-pointer bg-white rounded-md font-medium text-custom hover:text-custom-dark focus-within:outline-none focus-within:ring-2 focus-within:ring-offset-2 focus-within:ring-custom"><span>사진 업로드</span><input
                                        id="file-upload" name="file-upload" type="file" class="sr-only"
                                        accept="image/*"/></label></div>
                                <p class="text-xs text-gray-500">PNG, JPG, GIF up to 10MB</p></div>
                        </div>
                    </div>
                    <div>
                        <label for="title" class="block text-sm font-medium text-gray-700">모임 제목</label>
                        <div class="mt-1">
                            <input type="text" name="title" id="title" required
                                   class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                   placeholder="모임 제목을 입력하세요"/>
                        </div>
                    </div>

                    <div>
                        <label for="description" class="block text-sm font-medium text-gray-700">모임 설명</label>
                        <div class="mt-1">
                            <textarea id="description" name="description" rows="5" required
                                      class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                      placeholder="모임에 대해 설명해주세요" maxlength="300"></textarea>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700">해시태그 선택(최대 2개)</label>
                        <div class="mt-4 grid grid-cols-2 gap-4">
                            <div class="selected-tags-count hidden text-sm text-red-500 mb-2">2개까지만 선택할 수 있습니다</div>
                            <c:forEach items="${tags}" var="tag">
                                <div class="relative flex items-start">
                                    <div class="flex items-center h-5">
                                        <input type="checkbox" name="tags" value="${tag.id}"
                                               class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                                    </div>
                                    <div class="ml-3 text-sm">
                                        <label class="font-medium text-gray-700">${tag.name}</label>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <div>
                        <label for="memberLimit" class="block text-sm font-medium text-gray-700">참여 인원 제한(최대 50명)</label>
                        <div class="mt-1">
                            <input type="number" name="memberLimit" id="memberLimit" required
                                   class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                   min="1" max="50" placeholder="참여 가능한 최대 인원을 입력하세요" step="5"/>
                        </div>
                    </div>

                    <div class="flex justify-end space-x-4">
                        <button type="button" onclick="history.back()"
                                class="!rounded-button px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                            취소
                        </button>
                        <button type="submit"
                                class="!rounded-button px-4 py-2 border border-transparent shadow-sm text-sm font-medium text-white bg-custom hover:bg-custom focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                            모임 만들기
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </main>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const checkboxes = document.querySelectorAll('input[type="checkbox"][name="tags"]');
        const warningMessage = document.querySelector('.selected-tags-count');

        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', function() {
                const checkedBoxes = document.querySelectorAll('input[type="checkbox"][name="tags"]:checked');

                if (checkedBoxes.length > 2) {
                    this.checked = false;
                    warningMessage.classList.remove('hidden');
                } else {
                    warningMessage.classList.add('hidden');
                }
            });
        });
    });
</script>

<c:if test="${not empty creationFailed}">
    <div id="creationFailedModal" class="fixed z-10 inset-0 overflow-y-auto">
        <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
            <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
            <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
            <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="sm:flex sm:items-start">
                        <div class="mx-auto flex-shrink-0 flex items-center justify-center h-12 w-12 rounded-full bg-red-100 sm:mx-0 sm:h-10 sm:w-10">
                            <svg class="h-6 w-6 text-red-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
                            </svg>
                        </div>
                        <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                            <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">클럽 생성 실패</h3>
                            <div class="mt-2">
                                <p class="text-sm text-gray-500">클럽 생성이 실패했습니다. 다시 시도해 주세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <button type="button" class="w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-red-600 text-base font-medium text-white hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 sm:ml-3 sm:w-auto sm:text-sm" onclick="document.getElementById('creationFailedModal').style.display='none'">
                        닫기
                    </button>
                </div>
            </div>
        </div>
    </div>
</c:if>
</body>
</html>
