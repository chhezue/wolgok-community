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
    <!-- 헤더 추가해야 함 -->

    <main class="max-w-3xl mx-auto py-10 px-4 sm:px-6 lg:px-8">
        <div class="space-y-8">
            <div>
                <h1 class="text-2xl font-bold text-gray-900">새로운 모임 만들기</h1>
                <p class="mt-1 text-sm text-gray-600">모임에 대한 정보를 입력해주세요.</p>
            </div>

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
                        <input type="text" name="title" id="title"
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                               placeholder="모임 제목을 입력하세요"/>
                    </div>
                </div>

                <div>
                    <label for="description" class="block text-sm font-medium text-gray-700">모임 설명</label>
                    <div class="mt-1">
                        <textarea id="description" name="description" rows="5"
                                  class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                  placeholder="모임에 대해 설명해주세요" maxlength="300"></textarea>
                    </div>
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700">해시태그 선택(최대 2개)</label>
                    <div class="mt-4 grid grid-cols-2 gap-4">
                        <div class="selected-tags-count hidden text-sm text-red-500 mb-2">2개까지만 선택할 수 있습니다</div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">아웃도어/여행</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">운동/스포츠</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">인문학/책/글</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">외국/언어</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">문화/공연/축제</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">음악/악기</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">공예/만들기</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">댄스/무용</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">봉사활동</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">사교/인맥</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">차/오토바이</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">사진/영상</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">게임/오락</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">요리/제조</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">반려동물</label>
                            </div>
                        </div>
                        <div class="relative flex items-start">
                            <div class="flex items-center h-5">
                                <input type="checkbox"
                                       class="focus:ring-custom h-4 w-4 text-custom border-gray-300 rounded"/>
                            </div>
                            <div class="ml-3 text-sm">
                                <label class="font-medium text-gray-700">자기계발</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div>
                    <label for="member-limit" class="block text-sm font-medium text-gray-700">참여 인원 제한(최대 50명)</label>
                    <div class="mt-1">
                        <input type="number" name="member-limit" id="member-limit"
                               class="block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                               min="1" placeholder="참여 가능한 최대 인원을 입력하세요" step="5"/>
                    </div>
                </div>

                <div class="flex justify-end space-x-4">
                    <button type="button"
                            class="!rounded-button px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                        취소
                    </button>
                    <button type="submit"
                            class="!rounded-button px-4 py-2 border border-transparent shadow-sm text-sm font-medium text-white bg-custom hover:bg-custom focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom">
                        모임 만들기
                    </button>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>
