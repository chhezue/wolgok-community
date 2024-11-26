// 그룹 리스트와 관련된 DOM 요소
const groupList = document.getElementById("groupList");
const chatRoomName = document.getElementById("chatRoomName");
const chatMessages = document.getElementById("chatMessages");
const memberList = document.getElementById("memberList");
const sendButton = document.getElementById("sendButton");
const messageInput = document.getElementById("messageInput");

// 모임 및 회원 데이터
const groupData = {
    1: {
        name: "모임 1 채팅방",
        messages: [
            { sender: "회원 1", text: "모임 1의 첫 번째 메시지입니다!", isSent: false },
        ],
        members: [
            { id: 1, name: "회원 1", avatar: "./img/1.jpg" },
            { id: 2, name: "회원 2", avatar: "./img/2.jpg" },
        ],
    },
    2: {
        name: "모임 2 채팅방",
        messages: [
            { sender: "회원 3", text: "모임 2의 첫 번째 메시지입니다!", isSent: false },
        ],
        members: [
            { id: 3, name: "회원 3", avatar: "./img/3.jpg" },
        ],
    },
    3: {
        name: "모임 3 채팅방",
        messages: [
            { sender: "회원 4", text: "모임 3의 첫 번째 메시지입니다!", isSent: false },
        ],
        members: [
            { id: 4, name: "회원 4", avatar: "./img/4.jpg" },
            { id: 5, name: "회원 5", avatar: "./img/5.jpg" },
        ],
    },
};

// 초기화 함수
function initialize() {
    const defaultGroupId = "1"; // 기본 모임 ID
    const defaultGroup = groupData[defaultGroupId];

    // 채팅방 이름 설정
    chatRoomName.textContent = defaultGroup.name;

    // 메시지 렌더링
    updateMessages(defaultGroup.messages);

    // 회원 목록 렌더링
    updateMembers(defaultGroup.members);

    // 그룹 클릭 이벤트 등록
    setupGroupClickHandlers();
}

// 메시지 업데이트 함수
function updateMessages(messages) {
    chatMessages.innerHTML = ""; // 기존 메시지 초기화

    // 현재 그룹 정보 가져오기
    const currentGroupId = Object.keys(groupData).find(
        (id) => groupData[id].name === chatRoomName.textContent
    );
    const currentGroupMembers = groupData[currentGroupId]?.members || [];

    messages.forEach((message) => {
        const messageDiv = document.createElement("div");
        messageDiv.classList.add("message", message.isSent ? "sent" : "received");

        // 이미지 추가
        const avatarImg = document.createElement("img");

        if (message.isSent) {
            avatarImg.src = "./img/me.jpg"; // "나"의 이미지
        } else {
            const member = currentGroupMembers.find((m) => m.name === message.sender);
            avatarImg.src = member?.avatar || "./img/default.jpg"; // 상대방 이미지
        }

        avatarImg.alt = `${message.sender} 이미지`;
        avatarImg.classList.add("message-avatar");

        // 말풍선 추가
        const bubbleDiv = document.createElement("div");
        bubbleDiv.classList.add("bubble");
        bubbleDiv.textContent = message.text;

        // 메시지 구성
        if (message.isSent) {
            messageDiv.appendChild(bubbleDiv);
            messageDiv.appendChild(avatarImg);
        } else {
            messageDiv.appendChild(avatarImg);
            messageDiv.appendChild(bubbleDiv);
        }

        chatMessages.appendChild(messageDiv);
    });
}

// 회원 목록 업데이트 함수
function updateMembers(members) {
    memberList.innerHTML = ""; // 기존 회원 목록 초기화

    members.forEach((member) => {
        const memberItem = document.createElement("li");
        memberItem.classList.add("member-card");

        // 이미지 추가
        const avatarImg = document.createElement("img");
        avatarImg.src = member.avatar;
        avatarImg.alt = `${member.name} 이미지`;

        // 이름 추가
        const nameSpan = document.createElement("span");
        nameSpan.classList.add("member-name");
        nameSpan.textContent = member.name;

        memberItem.appendChild(avatarImg);
        memberItem.appendChild(nameSpan);

        memberList.appendChild(memberItem);
    });
}

// 그룹 클릭 이벤트 등록
function setupGroupClickHandlers() {
    const groupCards = document.querySelectorAll(".group-card");
    groupCards.forEach((groupCard) => {
        groupCard.addEventListener("click", () => {
            const groupId = groupCard.dataset.group;
            const groupInfo = groupData[groupId];

            if (!groupInfo) {
                console.error(`Invalid group ID: ${groupId}`);
                return;
            }

            // 채팅방 이름 변경
            chatRoomName.textContent = groupInfo.name;

            // 메시지 업데이트
            updateMessages(groupInfo.messages);

            // 회원 목록 업데이트
            updateMembers(groupInfo.members);
        });
    });
}

// 메시지 전송 이벤트
function sendMessage() {
    const messageText = messageInput.value.trim();
    if (messageText) {
        const currentGroupId = Object.keys(groupData).find(
            (id) => groupData[id].name === chatRoomName.textContent
        );

        // 메시지 추가
        const messageElement = document.createElement("div");
        messageElement.classList.add("message", "sent");
        messageElement.innerHTML = `
            <div class="bubble">${messageText}</div>
            <img src="./img/5.jpg" alt="나의 이미지" class="message-avatar">
        `;
        chatMessages.appendChild(messageElement);
        chatMessages.scrollTop = chatMessages.scrollHeight;

        // 그룹 메시지 저장 (sent: true로 추가)
        groupData[currentGroupId].messages.push({ sender: "나", text: messageText, isSent: true });

        // 입력창 초기화
        messageInput.value = "";
    }
}

// 이벤트 리스너 등록
sendButton.addEventListener("click", sendMessage);
messageInput.addEventListener("keydown", (event) => {
    if (event.key === "Enter") {
        sendMessage();
    }
});

// 초기화 실행
initialize();
