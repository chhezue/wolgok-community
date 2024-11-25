package model.dao;

import model.domain.News;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class NewsDAO {
    private JDBCUtil jdbcUtil = new JDBCUtil(); // JDBCUtil 객체를 참조하기 위한 변수

    // 전체 뉴스 정보를 List로 반환하는 메소드
    public List<News> getNewsList() {
        String query = "SELECT * FROM News ORDER BY NewsId ASC";
        jdbcUtil.setSql(query);
        List<News> list = new ArrayList<>();

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            while (rs.next()) {
                News news = new News();
                // 각 필드를 설정
                news.setTitle(rs.getString("title"));
                news.setContents(rs.getString("contents"));
                news.setPress(rs.getString("press"));
                news.setTime(rs.getDate("publishedDate")); // Date로 변경
                news.setContentsImage(rs.getString("contentsImage"));
                news.setViewCount(rs.getInt("viewCount"));
                news.setHeartCount(rs.getInt("heartCount"));
                news.setCategory(rs.getString("category"));
                list.add(news);
            }
        } catch (SQLException ex) {
            System.out.println("뉴스 리스트 조회 오류 발생");
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return list;
    }

    // 뉴스 정보를 뉴스 ID로 검색하는 메소드
    public News getNewsById(int newsId) {
        String query = "SELECT * FROM News WHERE NewsId = ?";
        jdbcUtil.setSql(query);
        jdbcUtil.setParameters(new Object[]{newsId});
        News news = null;

        try {
            ResultSet rs = jdbcUtil.executeQuery();
            if (rs.next()) {
                news = new News();
                // 각 필드를 설정
                news.setTitle(rs.getString("title"));
                news.setContents(rs.getString("contents"));
                news.setPress(rs.getString("press"));
                news.setTime(rs.getDate("publishedDate")); // Date로 변경
                news.setContentsImage(rs.getString("contentsImage"));
                news.setViewCount(rs.getInt("viewCount"));
                news.setHeartCount(rs.getInt("heartCount"));
                news.setCategory(rs.getString("category"));
            }
        } catch (SQLException ex) {
            System.out.println("뉴스 검색 오류 발생");
            ex.printStackTrace();
        } finally {
            jdbcUtil.close();
        }
        return news;
    }

    // 뉴스 정보를 삽입하는 메소드
    public int insertNews(News news) {
        String insertQuery = "INSERT INTO News (category, viewCount, heartCount, publishedDate, contentsImage, press, contents, title) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcUtil.setSql(insertQuery);
        Object[] param = new Object[]{
                news.getCategory(), news.getViewCount(),
                news.getHeartCount(), news.getTime(), news.getContentsImage(),
                news.getPress(), news.getContents(), news.getTitle()
        };
        jdbcUtil.setParameters(param);
        int result = 0;

        try {
            result = jdbcUtil.executeUpdate();
            System.out.println(news.getTitle() + " 뉴스 정보가 삽입되었습니다.");
        } catch (SQLException ex) {
            System.out.println("입력 오류 발생");
            if (ex.getErrorCode() == 1) {
                System.out.println("동일한 뉴스 정보가 이미 존재합니다.");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return result;
    }

    // 뉴스 정보를 수정하는 메소드
    public int updateNews(News news) {
        String updateQuery = "UPDATE News SET category = ?, viewCount = ?, heartCount = ?, publishedDate = ?, contentsImage = ?, press = ?, contents = ?, title = ? WHERE NewsId = ?";
        jdbcUtil.setSql(updateQuery);
        Object[] param = new Object[]{
                news.getCategory(), news.getViewCount(), news.getHeartCount(),
                news.getTime(), news.getContentsImage(), news.getPress(),
                news.getContents(), news.getNewsId() // 뉴스 ID를 마지막에 설정
        };
        jdbcUtil.setParameters(param);
        int result = 0;

        try {
            result = jdbcUtil.executeUpdate();
            System.out.println(news.getTitle() + " 뉴스 정보가 수정되었습니다.");
        } catch (SQLException ex) {
            System.out.println("수정 오류 발생");
            ex.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return result;
    }

    // 뉴스 정보를 삭제하는 메소드
    public int deleteNews(int newsId) {
        String deleteQuery = "DELETE FROM News WHERE NewsId = ?";
        jdbcUtil.setSql(deleteQuery);
        jdbcUtil.setParameters(new Object[]{newsId});
        int result = 0;

        try {
            result = jdbcUtil.executeUpdate();
            System.out.println(newsId + " 뉴스 정보가 삭제되었습니다.");
        } catch (SQLException e) {
            System.out.println("뉴스 삭제 오류 발생");
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            jdbcUtil.commit();
            jdbcUtil.close();
        }
        return result;
    }
}
