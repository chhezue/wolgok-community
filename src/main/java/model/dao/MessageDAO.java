package model.dao;

import model.domain.Message;
import model.domain.ChatRoom;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class MessageDAO {
    private JDBCUtil jdbcUtil = new JDBCUtil();

    // 특정 채팅방의 메시지 내역을 조회
    public List<Message> getMessagesByChatroomId(int chatRoomId) {
        String query = "SELECT messageId, messageTime, viewCount, content, ChatroomId, senderId " +
                "FROM Message WHERE ChatroomId = ? ORDER BY messageTime ASC";
        Object[] param = new Object[] { chatRoomId };
        jdbcUtil.setSqlAndParameters(query, param);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            List<Message> list = new ArrayList<>();
            while (rs.next()) {
                Message msg = new Message();
                msg.setMessageId(rs.getInt("messageId"));
                msg.setMessageTime(rs.getTimestamp("messageTime"));
                msg.setViewCount(rs.getInt("viewCount"));
                msg.setContent(rs.getString("content"));

                // ChatRoom 객체 생성 및 설정
                ChatRoom chatRoom = new ChatRoom();
                chatRoom.setChatRoomId(rs.getInt("ChatroomId"));
                msg.setChatRoom(chatRoom); // Message에 ChatRoom 설정

                msg.setSenderId(rs.getInt("senderId"));
                list.add(msg);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 채팅 내용에서 키워드 검색
    public List<Message> searchMessages(int chatRoomId, String keyword) {
        String query = "SELECT messageId, messageTime, viewCount, content, ChatroomId, senderId " +
                "FROM Message WHERE ChatroomId = ? AND content LIKE ?";
        Object[] param = new Object[] { chatRoomId, "%" + keyword + "%" };
        jdbcUtil.setSqlAndParameters(query, param);

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            List<Message> list = new ArrayList<>();
            while (rs.next()) {
                Message msg = new Message();
                msg.setMessageId(rs.getInt("messageId"));
                msg.setMessageTime(rs.getTimestamp("messageTime"));
                msg.setViewCount(rs.getInt("viewCount"));
                msg.setContent(rs.getString("content"));

                // ChatRoom 객체 생성 및 설정
                ChatRoom chatRoom = new ChatRoom();
                chatRoom.setChatRoomId(rs.getInt("ChatroomId"));
                msg.setChatRoom(chatRoom); // Message에 ChatRoom 설정

                msg.setSenderId(rs.getInt("senderId"));
                list.add(msg);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return null;
    }

    // 메시지 삭제
    public int deleteMessage(int messageId) {
        String deleteQuery = "DELETE FROM Message WHERE messageId = ?";
        Object[] param = new Object[] { messageId };
        jdbcUtil.setSqlAndParameters(deleteQuery, param);

        try {
            return jdbcUtil.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return 0;
    }
}
