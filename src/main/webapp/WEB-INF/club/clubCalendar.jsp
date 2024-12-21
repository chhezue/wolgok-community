<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>모임 일정 관리</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 font-sans">
<jsp:include page="../header.jsp" />

<div class="min-h-screen">
    <nav class="bg-white shadow">
        <div class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex">
                    <div class="flex-shrink-0 flex items-center">
                        <img class="h-8 w-auto" src="https://ai-public.creatie.ai/gen_page/logo_placeholder.png"
                             alt="로고"/>
                    </div>
                    <div class="ml-8 flex items-center space-x-6 flex-grow"><h1 class="text-xl font-bold text-gray-900">
                        독서 모임</h1>
                        <p class="text-sm text-gray-500">매주 새로운 책을 함께 읽고 토론하는 모임입니다</p>
                        <div class="ml-4 flex items-center"><span
                                class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">참여 인원: 8/12</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="flex space-x-12">
            <div class="w-3/4">
                <div class="bg-white rounded-lg shadow p-6">
                    <div class="flex justify-between items-center mb-6">
                        <div class="flex space-x-6">
                            <button class="!rounded-button bg-custom text-white px-4 py-2 text-sm font-medium">전체 일정
                            </button>
                            <button class="!rounded-button bg-white border border-gray-300 text-gray-700 px-4 py-2 text-sm font-medium">
                                참여 일정
                            </button>
                            <button class="!rounded-button bg-white border border-gray-300 text-gray-700 px-4 py-2 text-sm font-medium">
                                미참여 일정
                            </button>
                        </div>
                        <div class="flex items-center space-x-4">
                            <button class="!rounded-button p-2 text-gray-600 hover:text-gray-900">
                                <i class="fas fa-chevron-left"></i>
                            </button>
                            <h2 class="text-lg font-medium">2024년 3월</h2>
                            <button class="!rounded-button p-2 text-gray-600 hover:text-gray-900">
                                <i class="fas fa-chevron-right"></i>
                            </button>
                        </div>
                    </div>

                    <div class="grid grid-cols-7 gap-1 bg-gray-200 rounded-lg overflow-hidden mb-2">
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">일</div>
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">월</div>
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">화</div>
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">수</div>
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">목</div>
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">금</div>
                        <div class="bg-gray-100 p-2 text-center text-sm font-medium text-gray-600">토</div>
                    </div>

                    <div class="grid grid-cols-7 gap-1 bg-gray-200 rounded-lg overflow-hidden">
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">25</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">26</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">27</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">28</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">29</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">1
                            <div class="absolute bottom-2 left-1/2 transform -translate-x-1/2">
                                <div class="w-2 h-2 bg-custom rounded-full"></div>
                                <span class="text-xs text-gray-500 ml-1">정규</span></div>
                        </button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">2</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">3</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">4</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">5</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">6</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">7</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">8</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">9</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">10</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">11</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">12</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">13</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">14</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">15</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">16</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">17</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">18</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">19</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">20</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">21</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">22</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">23</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">24</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">25</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">26</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">27</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">28</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">29</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">30</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative">31</button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">1</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">2</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">3</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">4</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">5</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">6</span></button>
                        <button class="bg-white p-4 min-h-[100px] hover:bg-gray-50 relative"><span
                                class="text-gray-400">7</span></button>
                    </div>
                </div>
            </div>

            <div class="w-1/4">
                <div class="bg-white rounded-lg shadow p-6">
                    <h3 class="text-lg font-medium mb-4">선택된 일정</h3>
                    <div class="space-y-4">
                        <div class="border-l-4 border-custom pl-4 py-2">
                            <div class="flex items-center">
                                <div class="text-sm font-medium">독서 토론 모임</div>
                                <span class="ml-2 text-xs px-2 py-0.5 bg-blue-100 text-blue-800 rounded-full">정규</span>
                            </div>
                            <div class="text-sm text-gray-500">3월 1일 (금) 오후 7:00</div>
                            <div class="text-sm text-gray-500">서울 강남구 카페</div>
                            <div class="mt-2"><span
                                    class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">참여 인원: 8/12</span>
                            </div>
                            <button class="!rounded-button mt-2 w-full bg-custom text-white px-4 py-2 text-sm font-medium">
                                참여하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <div id="eventModal" class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
        <div class="bg-white rounded-lg shadow-xl max-w-md w-full mx-4">
            <div class="p-6">
                <div class="flex justify-between items-start">
                    <h3 class="text-lg font-medium">
                        <div class="flex items-center"><span>독서 토론 모임</span><span
                                class="ml-2 text-xs px-2 py-0.5 bg-blue-100 text-blue-800 rounded-full">정규</span></div>
                    </h3>
                    <button class="text-gray-400 hover:text-gray-500">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="mt-4 space-y-4">
                    <div class="flex items-center space-x-2">
                        <i class="fas fa-calendar text-gray-400"></i>
                        <span class="text-sm text-gray-600">3월 1일 (금) 오후 7:00</span>
                    </div>
                    <div class="flex items-center space-x-2">
                        <i class="fas fa-map-marker-alt text-gray-400"></i>
                        <span class="text-sm text-gray-600">서울 강남구 카페</span>
                    </div>
                    <div class="rounded-lg overflow-hidden h-40">
                        <img src="https://ai-public.creatie.ai/gen_page/map_placeholder_1280x720.png" alt="지도"
                             class="w-full h-full object-cover"/>
                    </div>
                    <div class="flex items-center space-x-2">
                        <i class="fas fa-users text-gray-400"></i>
                        <span class="text-sm text-gray-600">참여 인원: 8/12</span>
                    </div>
                    <button class="!rounded-button w-full bg-custom text-white px-4 py-2 text-sm font-medium">
                        참여하기
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.querySelectorAll('.calendar-day').forEach(day => {
        day.addEventListener('click', () => {
            document.getElementById('eventModal').classList.remove('hidden');
        });
    });

    document.querySelector('#eventModal button').addEventListener('click', () => {
        document.getElementById('eventModal').classList.add('hidden');
    });
</script>
</body>
</html>
