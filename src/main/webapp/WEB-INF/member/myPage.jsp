<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>스킬 셰어 - 프로필</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://ai-public.creatie.ai/gen_page/tailwind-custom.css" rel="stylesheet"/>
    <script src="https://cdn.tailwindcss.com/3.4.5?plugins=forms@0.5.7,typography@0.5.13,aspect-ratio@0.4.2,container-queries@0.1.1"></script>
    <script src="https://ai-public.creatie.ai/gen_page/tailwind-config.min.js" data-color="#000000" data-border-radius="small"></script>
</head>
<body class="bg-gray-50 min-h-screen">
    <nav class="bg-white border-b border-gray-200">
        <div class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <img src="https://ai-public.creatie.ai/gen_page/logo_placeholder.png" alt="Skill Share" class="h-8 w-auto"/>
                    <div class="hidden md:ml-8 md:flex md:space-x-8">
                    <a href="<c:url value='/member/myclub' />" class="inline-flex items-center px-1 pt-1 text-gray-700 hover:text-custom">나의 모임</a></div>
                </div>
                <div class="flex-1 flex items-center justify-center px-2 lg:px-0">
                    <div class="max-w-lg w-full">
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex items-center space-x-6">
                    <button class="text-gray-700 hover:text-custom">
                        <i class="fas fa-bell text-xl"></i>
                    </button>
                    <div class="relative">
                        <img src="${profileImageUrl}" alt="프로필" class="h-8 w-8 rounded-full"/>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="grid grid-cols-12 gap-8 items-start">
            <div class="col-span-3">
                <div class="bg-white rounded-lg shadow p-6 space-y-6"><div class="text-center mb-4"><div class="text-xl font-medium text-gray-900">3</div><div class="text-sm text-gray-500">가입한 모임</div></div>
                    <div class="flex flex-col items-center">
                        <img src="https://creatie.ai/ai/api/search-image?query=A professional headshot of a young Asian woman with a friendly smile, wearing business casual attire, against a neutral background&width=200&height=200&orientation=squarish&flag=bc18aa45-5924-4c2b-b234-4a9f9b687031&flag=3f7a8d4f-8557-435f-8ce7-c4e34d504848&flag=f6783042-8a6f-4536-9157-e16e5f15f563&flag=0ae2d7a9-18e0-40f2-87e2-0f5b980bf603&flag=018f7e78-aaf3-4546-bf47-f1c61182080a&flag=351293ee-0187-4b26-8f6c-35b4a7e26a2b&flag=afa460b2-dc9e-4a8c-b2c4-cca875a6f2b3" alt="${member.memberName }" class="w-32 h-32 rounded-full"/>
                        <h2 class="mt-4 text-xl font-medium text-gray-900">${member.memberName}</h2>
                        <p class="mt-1 text-sm text-gray-500">${member.bio}</p>
                        <a href="https://mobbin.com/" class="mt-2 text-sm text-custom hover:underline">${member.website}</a>
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
                    	<button onclick="window.location.href='<c:url value="/member/myclub" />'"class="w-full px-4 py-2 bg-custom text-white rounded-md text-sm hover:bg-custom/90">나의 모임</button>
                    </div>
                </div>
            </div>

            <div class="col-span-9">
            	<div class="bg-white rounded-lg shadow">
            		<div class="border-b border-gray-200">
            			<div class="flex justify-between items-center px-6 py-4">
            				<h2 class="text-xl font-medium text-gray-900">프로필 수정</h2>
            			</div>
            		</div>
            		<div class="p-6">
            		<form class="space-y-6" >
            			<div>
            				<label for="name" class="block text-sm font-medium text-gray-700">이름</label>
            				<input type="text" id="name" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm" value="${member.memberName}"/>
            			</div>
            			<div class="mb-6">
            				<label for="phone" class="block text-sm font-medium text-gray-700">전화번호</label>
            				<input type="tel" id="phone" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm" value="${member.phone}"/>
            			</div>
            			<div class="mb-6">
            				<label for="password_confirm" class="block text-sm font-medium text-gray-700">비밀번호 확인</label>
            				<input type="password" id="password_confirm" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm" placeholder="새 비밀번호 확인"/>
            			</div>
            			<div class="mb-6">
            				<label for="password" class="block text-sm font-medium text-gray-700">비밀번호 변경</label>
            				<input type="password" id="password" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm" placeholder="새 비밀번호"/>
            			</div><div class="mb-6">
            				<label for="email" class="block text-sm font-medium text-gray-700">이메일</label>
            				<input type="email" id="email" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm" value="${member.email}"/>
            			</div>
            			
            			<div>
            				<label for="bio" class="block text-sm font-medium text-gray-700">소개</label>
            				<textarea id="bio" rows="3" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm">${member.bio}</textarea>
            			</div>
            			<div>
            				<label for="website" class="block text-sm font-medium text-gray-700">웹사이트</label>
            				<input type="url" id="website" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-custom focus:ring-custom sm:text-sm" value="${member.website}"/>
            			</div>
            			<div>
            				<label for="profile-photo" class="block text-sm font-medium text-gray-700">프로필 사진</label>
            				<div class="mt-2 flex items-center">
            					<img src="${member.profileImageUrl}" alt="현재 프로필 사진" class="h-12 w-12 rounded-full"/>
            					<button class="ml-4 px-3 py-2 border border-gray-300 rounded-md text-sm text-gray-700 hover:border-custom hover:text-custom">사진 변경</button>
            				</div>
            			</div>
            			<div class="flex justify-end items-center space-x-4 mt-6">
            				<button type="button" class="px-4 py-2 border border-red-500 rounded-md text-sm text-red-500 hover:bg-red-50" id="delete-account-btn">회원 탈퇴하기</button>
            				<button type="button" class="px-4 py-2 border border-gray-300 rounded-md text-sm text-gray-700 hover:border-custom hover:text-custom">취소</button>
            				<button type="submit" class="px-4 py-2 bg-custom text-white rounded-md text-sm hover:bg-custom/90">저장하기</button>
            			</div>
            		</form>
            		</div>
            	</div>
            </div>
        </div>
    </main>
	</body>
</html>