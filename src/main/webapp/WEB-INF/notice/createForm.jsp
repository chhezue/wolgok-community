<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>공지사항</title>
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
    <jsp:include page="../header.jsp"/>

    <main class="max-w-8xl mx-auto py-6 sm:px-6 lg:px-8">
        <div class="px-4 py-6 sm:px-0"><h1 class="text-2xl font-bold mb-4">공지사항 작성</h1>
            <div class="bg-white rounded-lg p-6 shadow-sm">
                <div class="space-y-6">
                    <div><label class="block text-sm font-medium text-gray-700 mb-2">카테고리</label><select
                            class="w-full border-gray-300 rounded-md shadow-sm">
                        <option>전체</option>
                        <option>정산</option>
                        <option>정모</option>
                        <option>중요</option>
                        <option>기타</option>
                        <option>투표</option>
                    </select></div>
                    <div><label class="block text-sm font-medium text-gray-700 mb-2">제목</label><input type="text"
                                                                                                      class="w-full border-gray-300 rounded-md shadow-sm"
                                                                                                      placeholder="제목을 입력하세요"/>
                    </div>
                    <div><label class="block text-sm font-medium text-gray-700 mb-2">내용</label><textarea
                            class="w-full h-64 border-gray-300 rounded-md shadow-sm" placeholder="내용을 입력하세요"></textarea>
                    </div>
                    <div><label class="block text-sm font-medium text-gray-700 mb-2">첨부파일</label>
                        <div class="mt-1 flex justify-center px-6 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-md">
                            <div class="space-y-1 text-center">
                                <svg class="mx-auto h-12 w-12 text-gray-400" stroke="currentColor" fill="none"
                                     viewBox="0 0 48 48">
                                    <path d="M28 8H12a4 4 0 00-4 4v20m32-12v8m0 0v8a4 4 0 01-4 4H12a4 4 0 01-4-4v-4m32-4l-3.172-3.172a4 4 0 00-5.656 0L28 28M8 32l9.172-9.172a4 4 0 015.656 0L28 28m0 0l4 4m4-24h8m-4-4v8m-12 4h.02"
                                          stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                                <div class="flex text-sm text-gray-600"><label
                                        class="relative cursor-pointer rounded-md font-medium text-custom hover:text-custom-dark"><span>파일 업로드</span><input
                                        type="file" class="sr-only"/></label>
                                    <p class="pl-1">또는 드래그 앤 드롭</p></div>
                                <p class="text-xs text-gray-500">PNG, JPG, GIF up to 10MB</p></div>
                        </div>
                    </div>
                    <div class="flex justify-end space-x-3">
                        <button class="px-4 py-2 border border-gray-300 rounded-md text-sm font-medium text-gray-700 hover:bg-gray-50">
                            취소
                        </button>
                        <button class="px-4 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-custom hover:bg-custom-dark">
                            작성완료
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>