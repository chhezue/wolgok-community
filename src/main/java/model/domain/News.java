package model.domain;

import java.util.Date;

public class News {
    private int newsId;
    private String title;
    private String contents;
    private String press;
    private Date time;
    private String contentsImage;
    private int viewCount;
    private int heartCount;
    private String category;

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getContentsImage() {
        return contentsImage;
    }

    public void setContentsImage(String contentsImage) {
        this.contentsImage = contentsImage;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public int getHeartCount() {
        return heartCount;
    }

    public void setHeartCount(int heartCount) {
        this.heartCount = heartCount;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void displayNews() {
        // Implement display logic here
    }

    public void increaseHeartCount(int count) {
        this.heartCount += count;
    }

    public void increaseViewCount(int count) {
        this.viewCount += count;
    }
}

