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
<jsp:include page="header.jsp"/>

<main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="mb-8">
        <h1 class="text-2xl font-bold text-gray-900">모임 찾기</h1>
        <p class="mt-2 text-sm text-gray-600">원하는 조건으로 모임을 찾아보세요</p>
    </div>

    <div class="flex gap-8">
        <div class="w-72 flex-shrink-0">
            <div class="bg-white rounded-lg shadow p-6">
                <h2 class="text-lg font-medium text-gray-900 mb-4">필터</h2>

                <div class="space-y-6">
                    <div class="mt-6"><h3 class="text-sm font-medium text-gray-900 mb-2">관심사</h3>
                        <div class="space-y-2"><label class="flex items-center"><input type="checkbox"
                                                                                       class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">아웃도어/여행 (45)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">운동/스포츠 (38)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">인문학/책/글 (86)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">외국/언어 (52)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">문화/공연/축제 (34)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">음악/악기 (41)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">공예/만들기 (29)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">댄스/무용 (33)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">봉사활동 (27)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">사교/인맥 (65)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">차/오토바이 (22)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">사진/영상 (44)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">게임/오락 (58)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">요리/제조 (39)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">반려동물 (31)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">자기계발 (72)</span></label></div>
                    </div>
                    <div class="mt-6"><h3 class="text-sm font-medium text-gray-900 mb-2">참가 인원</h3>
                        <div class="space-y-2"><label class="flex items-center"><input type="checkbox"
                                                                                       class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">5-15명 (45)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">16-30명 (82)</span></label><label
                                class="flex items-center"><input type="checkbox"
                                                                 class="rounded border-gray-300 text-custom"/><span
                                class="ml-2 text-sm text-gray-700">31-50명 (63)</span></label></div>
                    </div>
                    <button class="w-full mt-6 bg-custom text-white px-4 py-2 rounded-md text-sm font-medium">모임 찾기
                    </button>
                </div>
            </div>
        </div>

        <div class="flex-1">
            <div class="flex justify-end mb-4">
                <select class="rounded-md border-gray-300 text-sm">
                    <option>추천순</option>
                    <option>최신순</option>
                    <option>인기순</option>
                    <option>마감임박순</option>
                    <option>인원적은순</option>
                </select>
            </div>

            <div class="grid grid-cols-3 gap-6">
                <div class="bg-white rounded-lg shadow overflow-hidden">
                    <img src="https://creatie.ai/ai/api/search-image?query=A group of diverse people sitting in a modern, well-lit cafe setting, engaged in an animated book discussion. The scene shows books scattered on the table, coffee cups, and warm lighting, creating an intellectual and cozy atmosphere&width=600&height=400&orientation=landscape&flag=168cbd18-91fa-483c-b46b-c7b1d66d7712&flag=19972062-f52e-43fe-8ac2-72b09084607f&flag=0eefd0e3-40be-4bb3-9464-e790a48f25a4&flag=f319e400-2d5a-4833-9cca-87bb319e139e&flag=32894c9f-2f91-44c6-8c50-00855089160f&flag=d0274cd5-c3ac-4ac3-a997-d6fd5ad62acd&flag=a6985380-2b32-42a9-9914-8c2a8cc130f0&flag=f9be64be-de1f-4f22-a644-3a4fcdde0dac"
                         class="w-full h-48 object-cover object-center" alt="모임 이미지"/>
                    <div class="p-4">
                        <h3 class="text-lg font-medium text-gray-900">청년 독서 토론 모임</h3>
                        <p class="mt-1 text-sm text-gray-500">매주 토요일 오후, 다양한 장르의 책을 읽고 토론하는 모임입니다.</p>
                        <div class="mt-4 space-y-2">
                            <div class="flex items-center text-sm text-gray-500"><i class="far fa-clock mr-2"></i>개설일:
                                2024.01.15
                            </div>
                            <div class="flex items-center text-sm text-gray-500"><i
                                    class="far fa-calendar-check mr-2"></i>최근 모임: 2024.02.10
                            </div>
                            <div class="flex items-center text-sm text-gray-500"><i class="far fa-users mr-2"></i>12/15명
                            </div>
                            <div class="mt-4">
                                <button class="w-full bg-custom text-white px-4 py-2 rounded-md text-sm font-medium hover:bg-opacity-90">
                                    둘러보기
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-white rounded-lg shadow overflow-hidden">
                    <img src="https://creatie.ai/ai/api/search-image?query=A bright, minimalist study room with people gathered around a large table, notebooks and laptops visible, discussing literature. Natural light streams through large windows, creating a professional learning environment&width=600&height=400&orientation=landscape&flag=68f73882-1613-418c-85f2-f5ac7409bd98&flag=d181e8f9-9c4b-4087-a16a-feb13034ebee&flag=6d4761f8-6b87-4a0e-a97b-b283f87a042e&flag=9651da89-f732-4be6-adc7-0539a7df7614&flag=cd49c4d9-520e-4fef-aef7-56e5f120a45c&flag=6d396427-f539-451c-a5bf-16583dd72eb4&flag=7f0ab266-4ce1-4c31-a4cd-7fa75cad4938&flag=7b98ff71-4f53-4d15-9eb8-143148754dc0"
                         class="w-full h-48 object-cover object-center" alt="모임 이미지"/>
                    <div class="p-4">
                        <h3 class="text-lg font-medium text-gray-900">직장인 북클럽</h3>
                        <p class="mt-1 text-sm text-gray-500">퇴근 후 함께하는 독서모임, 비즈니스 서적 위주로 진행됩니다.</p>
                        <div class="mt-4 space-y-2">
                            <div class="flex items-center text-sm text-gray-500"><i class="far fa-clock mr-2"></i>개설일:
                                2024.01.20
                            </div>
                            <div class="flex items-center text-sm text-gray-500"><i
                                    class="far fa-calendar-check mr-2"></i>최근 모임: 2024.02.12
                            </div>
                            <div class="flex items-center text-sm text-gray-500"><i class="far fa-users mr-2"></i>8/10명
                            </div>
                            <div class="mt-4">
                                <button class="w-full bg-custom text-white px-4 py-2 rounded-md text-sm font-medium hover:bg-opacity-90">
                                    둘러보기
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-8 flex justify-center">
                <nav class="relative z-0 inline-flex rounded-md shadow-sm -space-x-px" aria-label="Pagination">
                    <a href="#"
                       class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        <span class="sr-only">이전</span>
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <a href="#"
                       class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-custom">1</a>
                    <a href="#"
                       class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">2</a>
                    <a href="#"
                       class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">3</a>
                    <span class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700">...</span>
                    <a href="#"
                       class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">8</a>
                    <a href="#"
                       class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">9</a>
                    <a href="#"
                       class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">10</a>
                    <a href="#"
                       class="relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        <span class="sr-only">다음</span>
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </nav>
            </div>
        </div>
    </div>
</main>
</body>
</html>
