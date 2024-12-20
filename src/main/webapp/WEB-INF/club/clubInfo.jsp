<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.domain.Club" %>
<%@ page import="model.dao.ClubDAO" %>
<%
    // URL 파라미터에서 clubId를 가져옴
    String clubIdStr = request.getParameter("clubId");
    Club club = null;
    
    if (clubIdStr != null && !clubIdStr.isEmpty()) {
        int clubId = Integer.parseInt(clubIdStr);
        ClubDAO clubDAO = new ClubDAO();
        club = clubDAO.showClubDetail(clubId);
    }
    
    // club이 null인 경우를 처리
    if (club == null) {
        response.sendRedirect("/error.jsp"); // 에러 페이지로 리다이렉트
        return;
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>모임 상세</title>
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

    <main class="max-w-8xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="bg-white rounded-lg shadow overflow-hidden">
            <div class="relative h-64">
                <img src="https://creatie.ai/ai/api/search-image?query=A vibrant and welcoming group gathering scene in a modern cafe setting, with people engaged in animated conversation. The image shows a diverse group of young professionals networking and sharing ideas in a well-lit, contemporary space with minimalist decor.&width=1200&height=400&orientation=landscape&flag=3e3e3442-5be4-49db-bfe2-c4b9bb9be58b&flag=67819d23-179a-4dd4-8504-d0699208eb47&flag=846f44ae-f495-4865-af15-3bc1dee5a270&flag=bbe12628-2266-4ebc-8596-8addd02ad3b3&flag=ca1d1d15-5500-4497-8af0-e53843ed6a12&flag=07621ccd-f1ae-4299-be45-4ea1a0dba9fb&flag=2b334611-1e72-4b21-b6ca-69c4e19e710c&flag=1d999d94-bd06-47c6-8e57-0f6fd23def06"
                     alt="모임 커버 이미지" class="w-full h-full object-cover"/>
                <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/60 to-transparent p-6">
                    <h1 class="text-3xl font-bold text-white"><%= club.getClubName() %></h1>
                    <p class="text-white mt-2"><%= club.getCreatedAt() %></p>
                </div>
            </div>

            <div class="border-b border-gray-200">
                <nav class="flex -mb-px"><a href="#"
                                            class="w-1/4 py-4 px-1 text-center border-b-2 border-custom text-custom font-medium">홈</a><a
                        href="#"
                        class="w-1/4 py-4 px-1 text-center border-b-2 border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">멤버</a><a
                        href="#"
                        class="w-1/4 py-4 px-1 text-center border-b-2 border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">공지</a><a
                        href="#"
                        class="w-1/4 py-4 px-1 text-center border-b-2 border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">캘린더</a>
                </nav>
            </div>

            <div class="p-6">
                <div class="flex gap-2 mb-6">
                    <% if (club.getHashtags() != null) {
                        for (String hashtag : club.getHashtags()) { %>
                            <span class="inline-flex items-center px-3 py-1 rounded-full text-sm font-medium bg-custom/10 text-custom">
                                #<%= hashtag %>
                            </span>
                    <% }
                    } %>
                </div>
                <div class="prose max-w-none">
                    <h2 class="text-2xl font-bold text-gray-900 mb-4"><%= club.getClubName() %></h2>
                    <p class="text-gray-600 mb-6"><%= club.getDescription() %></p>
                    
                    <div class="mb-8">
                        <h3 class="text-xl font-bold text-gray-900 mb-4">모임 정보</h3>
                        <div class="bg-gray-50 p-4 rounded-lg">
                            <div class="grid grid-cols-2 gap-4">
                                <div class="bg-white p-4 rounded-lg shadow-sm">
                                    <div class="text-custom font-medium mb-2">참여 인원</div>
                                    <div class="space-y-2">
                                        <div class="flex items-center">
                                            <i class="far fa-users mr-2 text-gray-400"></i>
                                            <span><%= club.getMemberCount() %>/<%= club.getMaxMembers() %>명</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-sm text-gray-500 mb-8">
                        <div class="mb-2">
                            <i class="far fa-calendar-alt mr-2"></i>
                            모임 개설일: <%= club.getCreatedAt() %>
                        </div>
                    </div>
                </div>
                <div class="flex gap-4">
                    <button class="flex-1 !rounded-button bg-custom text-white py-3 px-4 font-medium hover:bg-custom/90 transition-colors"
                            style="flex: 6;">
                        가입하기
                    </button>
                    <button class="!rounded-button bg-gray-100 text-gray-700 py-3 px-4 font-medium hover:bg-gray-200 transition-colors flex items-center justify-center"
                            style="flex: 4;">
                        <i class="fas fa-share-alt mr-2"></i>공유하기
                    </button>
                </div>
            </div>
        </div>
    </main>

</div>
</body>
</html>
