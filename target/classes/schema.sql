CREATE TABLE Chatroom
(
    ChatroomId           INTEGER  NOT NULL ,
    myProfileImage       VARCHAR(18)  NULL ,
    otherProfileImage    VARCHAR(18)  NULL ,
    unreadCount          INTEGER  NULL ,
    clubId               INTEGER  NULL,
    PRIMARY KEY (ChatroomId)
);

--CREATE UNIQUE INDEX XPKChatroom ON Chatroom
--(ChatroomId   ASC,userId   ASC);

--ALTER TABLE Chatroom
--   ADD CONSTRAINT  XPKChatroom PRIMARY KEY (ChatroomId,userId);

CREATE TABLE Member
(
   userId               INTEGER  NOT NULL ,
   userName             VARCHAR(18)  NULL ,
   password             VARCHAR(18)  NULL ,
   nickname             VARCHAR(18)  NULL ,
   email                VARCHAR(18)  NULL ,
   profileImage         VARCHAR(18)  NULL ,
   registrationDate     DATE  NULL ,
   interests            VARCHAR(255)  NULL
);

CREATE UNIQUE INDEX XPKMember ON Member
    (userId   ASC);

ALTER TABLE Member
    ADD CONSTRAINT  XPKMember PRIMARY KEY (userId);

CREATE TABLE Message
(
    messageId	        INTEGER  NOT NULL,
    messageTime            DATE  NULL ,
    viewCount            INTEGER  NULL ,
    content              VARCHAR(255)  NULL ,
    ChatroomId           INTEGER  NOT NULL ,
    senderId              INTEGER  NOT NULL
);

CREATE TABLE Club
(
    clubId               INTEGER  NOT NULL ,
    clubName             VARCHAR(18)  NULL ,
    memberCount          INTEGER  NULL ,
    memberList          VARCHAR(255)  NULL ,
    hashtags            VARCHAR(255)  NULL ,
    description          VARCHAR(18)  NULL ,
    thumbnail            VARCHAR(18)  NULL ,
    maxMembers           INTEGER  NULL
);

CREATE UNIQUE INDEX XPKClub ON Club
    (clubId   ASC);

ALTER TABLE Club
    ADD CONSTRAINT  XPKClub PRIMARY KEY (clubId);

CREATE TABLE Join
(
    userId               INTEGER NOT NULL,
    clubId               INTEGER NOT NULL,
    role                 VARCHAR2(50) NULL
);

CREATE UNIQUE INDEX XPKJoin ON Join (userId ASC, clubId ASC);

ALTER TABLE Join
    ADD CONSTRAINT XPKJoin PRIMARY KEY (userId, clubId);

ALTER TABLE Join
    ADD CONSTRAINT R_Join_Member FOREIGN KEY (userId) REFERENCES Member (userId);

ALTER TABLE Join
    ADD CONSTRAINT R_Join_Club FOREIGN KEY (clubId) REFERENCES Club (clubId);


CREATE TABLE News
(
    NewsId               INTEGER  NOT NULL ,
    category             VARCHAR(18)  NULL ,
    viewCount            INTEGER  NULL ,
    heartCount           INTEGER  NULL ,
    publishedDate                 DATE  NULL ,
    contentsImage        VARCHAR(18)  NULL ,
    press                VARCHAR(18)  NULL ,
    contents             VARCHAR(18)  NULL ,
    title                VARCHAR(18)  NULL
);

CREATE UNIQUE INDEX XPKNews ON News (NewsId ASC);

CREATE SEQUENCE ChatroomId_Seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE MessageId_Seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE ClubId_Seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE NewsId_Seq START WITH 1 INCREMENT BY 1;

ALTER TABLE Chatroom
    ADD CONSTRAINT R_11 FOREIGN KEY (clubId) REFERENCES Club (clubId) ON DELETE SET NULL;

ALTER TABLE Message
    ADD CONSTRAINT R_7 FOREIGN KEY (ChatroomId) REFERENCES Chatroom (ChatroomId);


// 가짜 데이터 생성
INSERT INTO Chatroom (ChatroomId, myProfileImage, otherProfileImage, unreadCount, clubId) VALUES
(1, 'image1.jpg', 'image2.jpg', 2, 1),
(2, 'image3.jpg', 'image4.jpg', 0, 2),
(3, 'image5.jpg', 'image6.jpg', 5, NULL),
(4, 'image7.jpg', 'image8.jpg', 1, 1),
(5, 'image9.jpg', 'image10.jpg', 3, 3);

INSERT INTO Member (userId, userName, password, nickname, email, profileImage, registrationDate, interests) VALUES
(1, 'user1', 'pass1', 'nickname1', 'user1@example.com', 'profile1.jpg', '2023-01-01', 'sports'),
(2, 'user2', 'pass2', 'nickname2', 'user2@example.com', 'profile2.jpg', '2023-02-01', 'music'),
(3, 'user3', 'pass3', 'nickname3', 'user3@example.com', 'profile3.jpg', '2023-03-01', 'art'),
(4, 'user4', 'pass4', 'nickname4', 'user4@example.com', 'profile4.jpg', '2023-04-01', 'technology'),
(5, 'user5', 'pass5', 'nickname5', 'user5@example.com', 'profile5.jpg', '2023-05-01', 'travel');

INSERT INTO Message (messageId, messageTime, viewCount, content, ChatroomId, senderId) VALUES
(1, '2023-11-01', 10, 'Hello everyone!', 1, 1),
(2, '2023-11-02', 5, 'How are you?', 1, 2),
(3, '2023-11-03', 20, 'Let\'s meet up!', 2, 3),
(4, '2023-11-04', 15, 'Check this out!', 3, 4),
(5, '2023-11-05', 30, 'Great idea!', 4, 5);

INSERT INTO Club (clubId, clubName, memberCount, memberList, hashtags, description, thumbnail, maxMembers) VALUES
(1, 'Sports Club', 10, '1,2,3', '#sports,#fun', 'A club for sports enthusiasts', 'thumbnail1.jpg', 20),
(2, 'Music Club', 5, '2,3', '#music,#live', 'For music lovers', 'thumbnail2.jpg', 15),
(3, 'Art Club', 8, '1,4,5', '#art,#creativity', 'An art community', 'thumbnail3.jpg', 25),
(4, 'Tech Club', 12, '3,4', '#technology,#innovation', 'For tech geeks', 'thumbnail4.jpg', 30),
(5, 'Travel Club', 6, '1,5', '#travel,#adventure', 'Travel enthusiasts unite', 'thumbnail5.jpg', 10);

INSERT INTO Join (userId, clubId, role) VALUES
(1, 1, 'member'),
(2, 1, 'admin'),
(3, 2, 'member'),
(4, 3, 'member'),
(5, 4, 'admin');

INSERT INTO News (NewsId, category, viewCount, heartCount, publishedDate, contentsImage, press, contents, title) VALUES
(1, 'Sports', 100, 10, '2023-11-01', 'news_image1.jpg', 'Sports Daily', 'Latest sports news', 'Sports Update'),
(2, 'Music', 200, 20, '2023-11-02', 'news_image2.jpg', 'Music Times', 'New album releases', 'Music News'),
(3, 'Art', 150, 15, '2023-11-03', 'news_image3.jpg', 'Art Journal', 'Exhibition highlights', 'Art News'),
(4, 'Technology', 300, 30, '2023-11-04', 'news_image4.jpg', 'Tech World', 'Latest tech trends', 'Tech Update'),
(5, 'Travel', 250, 25, '2023-11-05', 'news_image5.jpg', 'Travel Guide', 'Top travel destinations', 'Travel News');