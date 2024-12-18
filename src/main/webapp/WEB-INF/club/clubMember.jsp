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
<jsp:include page="header.jsp"/>

<main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="bg-white rounded-lg shadow">
        <div class="px-6 py-5 border-b border-gray-200">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-2xl font-bold text-gray-900">독서 모임</h1>
                    <p class="mt-1 text-sm text-gray-500">전체 멤버 32명</p>
                </div>
            </div>
        </div>

        <div class="px-6 py-4 border-b border-gray-200">
            <div class="flex flex-col sm:flex-row justify-between space-y-4 sm:space-y-0 sm:space-x-4">
                <div class="flex space-x-4">
                    <select class="rounded-md border-gray-300 text-base focus:ring-custom focus:border-custom">
                        <option>전체 멤버</option>
                        <option>모임장</option>
                        <option>일반 멤버</option>
                    </select>
                </div>
                <div class="relative">
                    <input type="text" placeholder="멤버 검색"
                           class="w-full sm:w-80 rounded-md border-gray-300 pl-10 focus:ring-custom focus:border-custom"/>
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
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">최근 활동
                    </th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="flex items-center cursor-pointer hover:bg-gray-50">
                            <div class="h-10 w-10 flex-shrink-0"><img class="h-10 w-10 rounded-full object-cover"
                                                                      src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a Korean person with a friendly smile&width=400&height=400&orientation=squarish&flag=8be64357-d4a5-4022-9b28-f904c8bb0292&flag=86da6ea6-ffc0-4367-a44b-2d5ff64d91f2&flag=d4e20c5d-91cf-4bab-b1e9-32fa936c6fcd&flag=49592b6e-f508-4420-a733-fbf24f60683c"
                                                                      alt=""/></div>
                            <div class="ml-4">
                                <div class="text-sm font-medium text-gray-900">나</div>
                            </div>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap"><span
                            class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-gray-100 text-gray-800">일반 멤버</span>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2024.01.15</td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="flex items-center justify-between"><span
                                class="text-sm text-gray-500">2024.02.21</span>
                            <button class="ml-4 px-3 py-1 text-sm text-red-600 hover:text-red-800 font-medium rounded-md border border-red-600 hover:border-red-800">
                                탈퇴하기
                            </button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="flex items-center cursor-pointer hover:bg-gray-50">
                            <div class="h-10 w-10 flex-shrink-0">
                                <img class="h-10 w-10 rounded-full object-cover"
                                     src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a Korean woman in her 30s with a warm smile, wearing business casual attire, against a neutral background&width=400&height=400&orientation=squarish&flag=efe88259-4c46-4c86-950e-c0f65fb00a17&flag=984ea86a-31fe-49cf-80fe-c048abd77b83&flag=39b331d4-4bc1-4e6c-a8ce-c5a6a169f830&flag=fc95a729-4c98-4221-bc06-6b9cc2cee3f4&flag=a0e8f3c2-c0e9-4d9b-b4d6-431935c73b0b"
                                     alt=""/>
                            </div>
                            <div class="ml-4">
                                <div class="text-sm font-medium text-gray-900">김지영</div>
                            </div>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-custom text-white">모임장</span>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023.10.15</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2024.02.20</td>
                </tr>
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="flex items-center cursor-pointer hover:bg-gray-50">
                            <div class="h-10 w-10 flex-shrink-0">
                                <img class="h-10 w-10 rounded-full object-cover"
                                     src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a Korean man in his 20s with glasses, wearing a casual shirt, against a neutral background&width=400&height=400&orientation=squarish&flag=30d11694-893f-4c3d-9586-dce4bcf68e1f&flag=df276e16-a372-4175-bdc8-cefc0ae6f5d1&flag=8b6adec0-03ce-4189-968e-83b21ac47f5a&flag=796103f5-35ea-4b78-9228-889084ca35c4&flag=85750a1a-2b6b-4e47-ae47-b7f99486f658"
                                     alt=""/>
                            </div>
                            <div class="ml-4">
                                <div class="text-sm font-medium text-gray-900">이민수</div>
                            </div>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-gray-100 text-gray-800">일반 멤버</span>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023.11.02</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2024.02.19</td>
                </tr>
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="flex items-center cursor-pointer hover:bg-gray-50">
                            <div class="h-10 w-10 flex-shrink-0">
                                <img class="h-10 w-10 rounded-full object-cover"
                                     src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a Korean woman in her 20s with long hair, wearing a casual blouse, against a neutral background&width=400&height=400&orientation=squarish&flag=e88cab31-5600-4abd-a56f-4681ca515971&flag=f746ccc6-65c3-466b-b45d-0e800e3d7461&flag=cc516dcb-27b1-45af-81ee-9fac4fb5bc13&flag=0a67b48d-2278-486c-b44f-b5b1e099ddcb&flag=336b24d6-ff03-4200-a211-b4abc5aca0f5"
                                     alt=""/>
                            </div>
                            <div class="ml-4">
                                <div class="text-sm font-medium text-gray-900">박서연</div>
                            </div>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-gray-100 text-gray-800">일반 멤버</span>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023.11.15</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2024.02.18</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="px-6 py-4 border-t border-gray-200">
            <nav class="flex items-center justify-between">
                <div class="flex-1 flex justify-between sm:justify-end">
                    <button class="!rounded-button relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                        이전
                    </button>
                    <div class="flex items-center mx-4">
                        <span class="text-sm text-gray-700">1</span>
                        <span class="mx-2 text-gray-500">/</span>
                        <span class="text-sm text-gray-700">4</span>
                    </div>
                    <button class="!rounded-button relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                        다음
                    </button>
                </div>
            </nav>
        </div>
        <div id="member-modal" class="hidden fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full">
            <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
                <div class="flex flex-col items-center"><img id="modal-image"
                                                             class="h-24 w-24 rounded-full object-cover mb-4" src=""/>
                    <h3 id="modal-name" class="text-lg font-bold mb-2"></h3>
                    <div class="w-full space-y-2">
                        <div class="flex justify-between"><span class="text-gray-500">역할</span><span id="modal-role"
                                                                                                     class="font-medium"></span>
                        </div>
                        <div class="flex justify-between"><span class="text-gray-500">가입일</span><span
                                id="modal-join-date" class="font-medium"></span></div>
                        <div class="flex justify-between"><span class="text-gray-500">최근 활동</span><span
                                id="modal-last-active" class="font-medium"></span></div>
                    </div>
                    <button class="mt-4 px-4 py-2 bg-gray-100 text-gray-800 rounded-md hover:bg-gray-200"
                            onclick="document.getElementById('member-modal').classList.add('hidden')">닫기
                    </button>
                </div>
            </div>
        </div>
        <div id="member-modal" class="hidden fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full">
            <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
                <div class="flex flex-col items-center"><img id="modal-image"
                                                             class="h-24 w-24 rounded-full object-cover mb-4" src=""/>
                    <h3 id="modal-name" class="text-lg font-bold mb-2"></h3>
                    <div class="w-full space-y-2">
                        <div class="flex justify-between"><span class="text-gray-500">역할</span><span id="modal-role"
                                                                                                     class="font-medium"></span>
                        </div>
                        <div class="flex justify-between"><span class="text-gray-500">가입일</span><span
                                id="modal-join-date" class="font-medium"></span></div>
                        <div class="flex justify-between"><span class="text-gray-500">최근 활동</span><span
                                id="modal-last-active" class="font-medium"></span></div>
                    </div>
                    <button class="mt-4 px-4 py-2 bg-gray-100 text-gray-800 rounded-md hover:bg-gray-200"
                            onclick="document.getElementById('member-modal').classList.add('hidden')">닫기
                    </button>
                </div>
            </div>
        </div>
    </div>
</main>

<script>document.querySelectorAll('.flex.items-center.cursor-pointer').forEach(el => {
    el.addEventListener('click', function () {
        const modal = document.getElementById('member-modal');
        const modalImg = document.getElementById('modal-image');
        const modalName = document.getElementById('modal-name');
        const modalRole = document.getElementById('modal-role');
        const modalJoinDate = document.getElementById('modal-join-date');
        const modalLastActive = document.getElementById('modal-last-active');
        modalImg.src = this.querySelector('img').src;
        modalName.textContent = this.querySelector('.text-sm.font-medium').textContent;
        modalRole.textContent = this.closest('tr').querySelector('.rounded-full').textContent;
        modalJoinDate.textContent = this.closest('tr').querySelector('td:nth-child(3)').textContent;
        modalLastActive.textContent = this.closest('tr').querySelector('td:nth-child(4)').textContent;
        modal.classList.remove('hidden');
    });
});</script>
<script>document.querySelectorAll('.flex.items-center.cursor-pointer').forEach(el => {
    el.addEventListener('click', function () {
        const modal = document.getElementById('member-modal');
        const modalImg = document.getElementById('modal-image');
        const modalName = document.getElementById('modal-name');
        const modalRole = document.getElementById('modal-role');
        const modalJoinDate = document.getElementById('modal-join-date');
        const modalLastActive = document.getElementById('modal-last-active');
        modalImg.src = this.querySelector('img').src;
        modalName.textContent = this.querySelector('.text-sm.font-medium').textContent;
        modalRole.textContent = this.closest('tr').querySelector('.rounded-full').textContent;
        modalJoinDate.textContent = this.closest('tr').querySelector('td:nth-child(3)').textContent;
        modalLastActive.textContent = this.closest('tr').querySelector('td:nth-child(4)').textContent;
        modal.classList.remove('hidden');
    });
});</script>
</body>
</html>