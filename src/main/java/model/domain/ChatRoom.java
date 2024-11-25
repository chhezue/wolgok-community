package model.domain;

public class ChatRoom {
    private int chatRoomId;
    private String lastMessage;
    private String myProfileImage;
    private String otherProfileImage;
    private int unreadCount;
    private Club club; // Club 객체

    // Getter 및 Setter 메소드
    public int getChatRoomId() {
        return chatRoomId;
    }

    public void setChatRoomId(int chatRoomId) {
        this.chatRoomId = chatRoomId;
    }

    public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }

    public String getLastMessage() {
        return lastMessage;
    }

    public void setLastMessage(String lastMessage) {
        this.lastMessage = lastMessage;
    }

    public String getMyProfileImage() {
        return myProfileImage;
    }

    public void setMyProfileImage(String myProfileImage) {
        this.myProfileImage = myProfileImage;
    }

    public String getOtherProfileImage() {
        return otherProfileImage;
    }

    public void setOtherProfileImage(String otherProfileImage) {
        this.otherProfileImage = otherProfileImage;
    }

    public int getUnreadCount() {
        return unreadCount;
    }

    public void setUnreadCount(int unreadCount) {
        this.unreadCount = unreadCount;
    }

    // Club ID를 반환하는 메소드 추가
    public int getClubId() {
        return club != null ? club.getClubId() : -1; // Club이 null이 아닐 경우 clubId 반환, null일 경우 -1 반환
    }

    public int countUnreadMessage(int count) {
        // Implement logic to count unread messages
        return unreadCount; // 필요에 따라 수정
    }

    public void displayChat() {
        // Implement display logic here
    }
}