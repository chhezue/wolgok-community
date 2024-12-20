<!DOCTYPE html><html lang="ko"><head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>일정 생성</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
<link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
<script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
<script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
        data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-[&#39;Noto_Sans_KR&#39;]">
<jsp:include page="../header.jsp"/>

<main class="max-w-3xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
    <div class="bg-white shadow rounded-lg p-8">
        <div class="space-y-8">
            <div>
                <h2 class="text-2xl font-bold text-gray-900 mb-6">일정 수정</h2>

                <div class="space-y-6">
                    <div>
                        <label class="text-base font-medium text-gray-900">일정 유형</label>
                        <div class="mt-4 space-x-4 flex">
                            <label class="flex items-center">
                                <input type="radio" name="meeting-type" value="regular"
                                       class="h-4 w-4 text-custom border-gray-300 focus:ring-custom"/>
                                <span class="ml-2 text-sm text-gray-700">정규 일정</span>
                            </label>
                            <label class="flex items-center">
                                <input type="radio" name="meeting-type" value="instant"
                                       class="h-4 w-4 text-custom border-gray-300 focus:ring-custom"/>
                                <span class="ml-2 text-sm text-gray-700">번개 일정</span>
                            </label>
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">일정 이름</label>
                        <div class="mt-1">
                            <input type="text"
                                   class="block w-full border-gray-300 bg-gray-100 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"
                                   placeholder="일정 이름을 입력하세요" disabled="true"/>
                        </div>
                    </div>
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700">날짜</label>
                            <div class="mt-1">
                                <input type="date"
                                       class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"/>
                            </div>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700">시간</label>
                            <div class="mt-1">
                                <input type="time"
                                       class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"/>
                            </div>
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">일정 장소</label>
                        <div class="mt-1">
                            <input type="text"
                                   class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"
                                   placeholder="일정 장소를 입력하세요"/>
                        </div>
                    </div>
                    <div>
                        <div><label class="block text-sm font-medium text-gray-700">참가 신청 마감일</label>
                            <div class="mt-1"><input type="datetime-local"
                                                     class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"
                                                     placeholder="참가 신청 마감일을 선택하세요"/></div>
                        </div>
                        <label class="block text-sm font-medium text-gray-700">참가 인원 제한</label>
                        <div class="mt-1">
                            <input type="number" min="1"
                                   class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"
                                   placeholder="최대 참가 인원을 입력하세요"/>
                        </div>
                    </div>
                    <div><label class="block text-sm font-medium text-gray-700">참가비</label>
                        <div class="mt-1"><input type="number" min="0"
                                                 class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"
                                                 placeholder="참가비를 입력하세요 (0원 = 무료)"/></div>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">일정 설명</label>
                        <div class="mt-1">
                            <textarea rows="4"
                                      class="block w-full border-gray-300 focus:border-custom focus:ring-custom sm:text-sm !rounded-button"
                                      placeholder="일정에 대한 설명을 입력하세요"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex justify-end space-x-4">
                <button type="button"
                        class="inline-flex items-center px-4 py-2 border border-red-300 text-sm font-medium !rounded-button text-red-700 bg-white hover:bg-red-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500">
                    일정 삭제하기
                </button>
                <button type="button"
                        class="inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium !rounded-button text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                    취소
                </button>
                <button type="submit"
                        class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium !rounded-button text-white bg-custom hover:bg-custom/90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                    일정 수정하기
                </button>
            </div>
        </div>
    </div>
</main>
<footer class="bg-white mt-12">
    <div class="max-w-8xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
        <div class="mt-8 border-t border-gray-200 pt-8">
            <p class="text-base text-gray-400 text-center">
                © 2024 Company Name. All rights reserved.
            </p>
        </div>
    </div>
</footer>
