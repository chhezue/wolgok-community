package model.domain;

import java.util.Date;

public class Message {
    private int messageId;
    private Date messageTime;
    private int viewCount;
    private String content;
    private ChatRoom chatRoom; // ChatRoom 객체
    private int senderId;
    private int chatRoomId; // ChatRoomId를 저장할 멤버 변수 추가

    public int getMessageId() {
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
    }

    public Date getMessageTime() {
        return messageTime;
    }

    public void setMessageTime(Date messageTime) {
        this.messageTime = messageTime;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ChatRoom getChatRoom() {
        return chatRoom;
    }

    public void setChatRoom(ChatRoom chatRoom) {
        this.chatRoom = chatRoom;
        if (chatRoom != null) {
            this.chatRoomId = chatRoom.getChatRoomId(); // chatRoomId 설정
        } else {
            this.chatRoomId = -1; // null일 경우 기본값 설정
        }
    }

    public int getChatRoomId() {
        return chatRoomId; // chatRoomId 반환
    }

    public int getSenderId() {
        return senderId;
    }

    public void setSenderId(int senderId) {
        this.senderId = senderId;
    }
}