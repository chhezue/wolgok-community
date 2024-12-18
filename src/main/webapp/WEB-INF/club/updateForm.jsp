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
<jsp:include page="header.jsp"/>
<div class="min-h-screen flex flex-col">
    <main class="flex-grow">
        <div class="max-w-3xl mx-auto py-10 px-4 sm:px-6 lg:px-8">
            <div class="mb-8">
                <h1 class="text-2xl font-bold text-gray-900">모임 수정</h1>
            </div>

            <form class="space-y-8">
                <div class="space-y-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">모임 이름</label>
                        <input type="text" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm bg-gray-100"
                               value="독서 토론 모임" disabled=""/>
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
                                        <input id="file-upload" name="file-upload" type="file" class="sr-only"/>
                                    </label>
                                </div>
                                <p class="text-xs text-gray-500">PNG, JPG, GIF up to 10MB</p>
                            </div>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700">모임 설명</label>
                        <div class="mt-1">
                            <textarea rows="4" class="block w-full border-gray-300 rounded-md shadow-sm"
                                      placeholder="모임에 대한 설명을 입력해주세요.">매주 토요일 오후, 다양한 책을 읽고 토론하는 모임입니다. 함께 생각을 나누며 성장해요!</textarea>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700">최대 인원 (50명까지)</label>
                        <input type="number" min="2" max="50"
                               class="mt-1 block w-32 border-gray-300 rounded-md shadow-sm" value="50"/>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-2">관심사 카테고리</label>
                        <div class="grid grid-cols-2 md:grid-cols-3 gap-3">
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">아웃도어/여행</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">운동/스포츠</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded" checked=""/>
                                <span class="ml-2 text-sm">인문학/책/글</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">외국/언어</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">문화/공연/축제</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">음악/악기</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">공예/만들기</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">댄스/무용</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">봉사활동</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">사교/인맥</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">차/오토바이</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">사진/영상</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">게임/오락</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">요리/제조</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">반려동물</span>
                            </label>
                            <label class="flex items-center p-3 border rounded-md cursor-pointer hover:border-custom">
                                <input type="checkbox" class="h-4 w-4 text-custom border-gray-300 rounded"/>
                                <span class="ml-2 text-sm">자기계발</span>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="flex justify-end space-x-3 mt-8 pt-8 border-t border-gray-200">
                    <div class="flex-1">
                        <button type="button"
                                class="w-full !rounded-button px-4 py-2 border border-red-300 shadow-sm text-sm font-medium rounded-md text-red-700 bg-white hover:bg-red-50">
                            모임 삭제하기
                        </button>
                    </div>
                    <button type="button"
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
