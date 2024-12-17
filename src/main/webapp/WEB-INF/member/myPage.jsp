<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>스킬 셰어 - 프로필</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000"
            data-border-radius="small"></script>
</head>
<body class="bg-gray-50 min-h-screen">
<jsp:include page="header.jsp"/>

<main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="grid grid-cols-12 gap-8 items-start">
        <div class="col-span-3">
            <div class="bg-white rounded-lg shadow p-6 space-y-6">
                <div class="text-center mb-4">
                    <div class="text-xl font-medium text-gray-900">3</div>
                    <div class="text-sm text-gray-500">가입한 모임</div>
                </div>
                <div class="flex flex-col items-center">
                    <img src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a young Asian woman with a friendly smile, wearing business casual attire, against a neutral background&width=200&height=200&orientation=squarish&flag=bc18aa45-5924-4c2b-b234-4a9f9b687031&flag=3f7a8d4f-8557-435f-8ce7-c4e34d504848&flag=f6783042-8a6f-4536-9157-e16e5f15f563&flag=0ae2d7a9-18e0-40f2-87e2-0f5b980bf603&flag=018f7e78-aaf3-4546-bf47-f1c61182080a&flag=351293ee-0187-4b26-8f6c-35b4a7e26a2b&flag=afa460b2-dc9e-4a8c-b2c4-cca875a6f2b3"
                         alt="김미영" class="w-32 h-32 rounded-full"/>
                    <h2 class="mt-4 text-xl font-medium text-gray-900">김미영</h2>
                    <p class="mt-1 text-sm text-gray-500">새로운 기술을 배우고 싶어요!</p>
                    <a href="https://mobbin.com/" class="mt-2 text-sm text-custom hover:underline">mobbin.com/</a>
                </div>


                <div class="flex justify-center space-x-4">
                    <a href="#" class="text-gray-400 hover:text-custom">
                        <i class="fab fa-twitter text-xl"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-custom">
                        <i class="fas fa-globe text-xl"></i>
                    </a>
                </div>
                <div class="mt-4 flex justify-center">
                    <button class="w-full px-4 py-2 bg-custom text-white rounded-md text-sm hover:bg-custom/90">나의 모임
                    </button>
                </div>
            </div>
        </div>

        <div class="col-span-9">
            <div class="bg-white rounded-lg shadow">
                <div class="border-b border-gray-200">
                    <div class="flex justify-between items-center px-6 py-4"><h2
                            class="text-xl font-medium text-gray-900">프로필 수정</h2></div>
                </div>
                <div class="p-6">
                    <form class="space-y-6">
                        <div><label for="name" class="block text-sm font-medium text-gray-700">이름</label><input
                                type="text" id="name"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                value="김미영"/></div>
                        <div class="mb-6"><label for="phone"
                                                 class="block text-sm font-medium text-gray-700">전화번호</label><input
                                type="tel" id="phone"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                value="010-1234-5678"/></div>
                        <div class="mb-6"><label for="password_confirm" class="block text-sm font-medium text-gray-700">비밀번호
                            확인</label><input type="password" id="password_confirm"
                                             class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                             placeholder="새 비밀번호 확인"/></div>
                        <div class="mb-6"><label for="password" class="block text-sm font-medium text-gray-700">비밀번호
                            변경</label><input type="password" id="password"
                                             class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                             placeholder="새 비밀번호"/></div>
                        <div class="mb-6"><label for="email" class="block text-sm font-medium text-gray-700">이메일</label><input
                                type="email" id="email"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                value="kimmi@example.com"/></div>
                        <div><label for="bio" class="block text-sm font-medium text-gray-700">소개</label><textarea
                                id="bio" rows="3"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm">새로운 기술을 배우고 싶어요!</textarea>
                        </div>
                        <div><label for="website" class="block text-sm font-medium text-gray-700">웹사이트</label><input
                                type="url" id="website"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm"
                                value="mobbin.com/"/></div>
                        <div><label class="block text-sm font-medium text-gray-700">관심사</label>
                            <div class="mt-2 flex flex-wrap gap-2"><span
                                    class="inline-flex items-center px-3 py-1 rounded-full bg-gray-100 text-sm text-gray-700">베이킹<button
                                    class="ml-2 text-gray-400 hover:text-gray-600">×</button></span><span
                                    class="inline-flex items-center px-3 py-1 rounded-full bg-gray-100 text-sm text-gray-700">레터링<button
                                    class="ml-2 text-gray-400 hover:text-gray-600">×</button></span><span
                                    class="inline-flex items-center px-3 py-1 rounded-full bg-gray-100 text-sm text-gray-700">앱 개발<button
                                    class="ml-2 text-gray-400 hover:text-gray-600">×</button></span>
                                <button class="px-3 py-1 rounded-full border border-gray-300 text-sm text-gray-500 hover:border-custom hover:text-custom">
                                    + 추가
                                </button>
                            </div>
                        </div>
                        <div><label for="profile-photo" class="block text-sm font-medium text-gray-700">프로필 사진</label>
                            <div class="mt-2 flex items-center"><img
                                    src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a young Asian woman with a friendly smile, wearing business casual attire, against a neutral background&width=200&height=200&orientation=squarish&flag=bc18aa45-5924-4c2b-b234-4a9f9b687031&flag=b9e143c7-db19-472d-a31d-eaa60dc3053e&flag=f022a9ad-71cd-47a0-9ac0-dfaed48640e7&flag=d161e8d5-e706-436c-a923-6ba73748e89f&flag=f581e75c-0b7e-4d2c-a5a9-bd3f8c60c79e&flag=d703df3a-08a9-4b1d-a02a-5e84704a218f&flag=fb92f4e3-23da-4f83-bf61-d6f9ce88ac43"
                                    alt="현재 프로필 사진" class="h-12 w-12 rounded-full"/>
                                <button class="ml-4 px-3 py-2 border border-gray-300 rounded-md text-sm text-gray-700 hover:border-custom hover:text-custom">
                                    사진 변경
                                </button>
                            </div>
                        </div>
                        <div class="flex justify-end items-center space-x-4 mt-6">
                            <button type="button"
                                    class="px-4 py-2 border border-red-500 rounded-md text-sm text-red-500 hover:bg-red-50"
                                    id="delete-account-btn">회원 탈퇴하기
                            </button>
                            <button type="button"
                                    class="px-4 py-2 border border-gray-300 rounded-md text-sm text-gray-700 hover:border-custom hover:text-custom">
                                취소
                            </button>
                            <button type="submit"
                                    class="px-4 py-2 bg-custom text-white rounded-md text-sm hover:bg-custom/90">저장하기
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>
