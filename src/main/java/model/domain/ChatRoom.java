package model.domain;

public class ChatRoom {
    private Club clubName;
    private String lastMessage;
    private String myProfileImage;
    private String otherProfileImage;
    private int unreadCount;

    // Getter and Setter methods
    public Club getClubName() {
        return clubName;
    }

    public void setClubName(Club clubName) {
        this.clubName = clubName;
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

    public int countUnreadMessage(int count) {
        // Implement logic to count unread messages
        return unreadCount;
    }

    public void displayChat() {
        // Implement display logic here
    }
}
