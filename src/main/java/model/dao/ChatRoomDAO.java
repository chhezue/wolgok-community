package model.dao;

import model.domain.ChatRoom;
import model.domain.Club;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class ChatRoomDAO {
    private JDBCUtil jdbcUtil = new JDBCUtil();

    // 특정 채팅방의 정보 조회
    public ChatRoom getChatRoomInfo(int chatRoomId) {
        String query = "SELECT ChatRoomId, myProfileImage, otherProfileImage, unreadCount, clubId " +
                "FROM ChatRoom WHERE ChatRoomId = ?";
        Object[] param = new Object[] { chatRoomId };
        jdbcUtil.setSqlAndParameters(query, param);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                ChatRoom chatRoom = new ChatRoom();
                chatRoom.setChatRoomId(rs.getInt("ChatRoomId"));
                chatRoom.setMyProfileImage(rs.getString("myProfileImage"));
                chatRoom.setOtherProfileImage(rs.getString("otherProfileImage"));
                chatRoom.setUnreadCount(rs.getInt("unreadCount"));

                // Club 객체 생성 및 clubId 설정
                Club club = new Club();
                club.setClubId(rs.getInt("clubId"));
                chatRoom.setClub(club); // ChatRoom에 Club 객체 설정

                return chatRoom;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 채팅방에 참여 중인 멤버 목록 조회
    public List<String> getChatRoomMembers(int chatRoomId) {
        String query = "SELECT Member.userName FROM Member " +
                "JOIN Join ON Member.userId = Join.userId " +
                "WHERE Join.clubId = ?";
        Object[] param = new Object[] { chatRoomId };
        jdbcUtil.setSqlAndParameters(query, param);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            List<String> members = new ArrayList<>();
            while (rs.next()) {
                members.add(rs.getString("userName"));
            }
            return members;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 키워드를 통한 채팅방 검색
    public List<ChatRoom> searchChatRooms(String keyword) {
        String query = "SELECT ChatRoomId, myProfileImage, otherProfileImage, unreadCount, clubId " +
                "FROM ChatRoom WHERE myProfileImage LIKE ? OR otherProfileImage LIKE ?";
        Object[] param = new Object[] { "%" + keyword + "%", "%" + keyword + "%" };
        jdbcUtil.setSqlAndParameters(query, param);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            List<ChatRoom> list = new ArrayList<>();
            while (rs.next()) {
                ChatRoom chatRoom = new ChatRoom();
                chatRoom.setChatRoomId(rs.getInt("ChatRoomId"));
                chatRoom.setMyProfileImage(rs.getString("myProfileImage"));
                chatRoom.setOtherProfileImage(rs.getString("otherProfileImage"));
                chatRoom.setUnreadCount(rs.getInt("unreadCount"));

                // Club 객체 생성 및 clubId 설정
                Club club = new Club();
                club.setClubId(rs.getInt("clubId"));
                chatRoom.setClub(club); // ChatRoom에 Club 객체 설정

                list.add(chatRoom);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }
}
