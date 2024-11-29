CREATE TABLE Member
(
   memberId               INTEGER  NOT NULL ,
   memberName             VARCHAR(18)  NULL ,
   password             VARCHAR(18)  NULL ,
   nickname             VARCHAR(18)  NULL ,
   email                VARCHAR(18)  NULL ,
   profileImage         VARCHAR(18)  NULL ,
   registrationDate     DATE  NULL ,
   interests            VARCHAR(255)  NULL
);

CREATE UNIQUE INDEX XPKMember ON Member
    (memberId   ASC);

ALTER TABLE Member
    ADD CONSTRAINT  XPKMember PRIMARY KEY (memberId);

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

CREATE SEQUENCE ClubId_Seq START WITH 1 INCREMENT BY 1;

CREATE UNIQUE INDEX XPKClub ON Club
    (clubId   ASC);

ALTER TABLE Club
    ADD CONSTRAINT  XPKClub PRIMARY KEY (clubId);

CREATE TABLE Join
(
    memberId               INTEGER NOT NULL,
    clubId               INTEGER NOT NULL,
    role                 VARCHAR2(50) NULL
);

CREATE UNIQUE INDEX XPKJoin ON Join (memberId ASC, clubId ASC);

ALTER TABLE Join
    ADD CONSTRAINT XPKJoin PRIMARY KEY (memberId, clubId);

ALTER TABLE Join
    ADD CONSTRAINT R_Join_Member FOREIGN KEY (memberId) REFERENCES Member (memberId);

ALTER TABLE Join
    ADD CONSTRAINT R_Join_Club FOREIGN KEY (clubId) REFERENCES Club (clubId);


-- CREATE TABLE News
-- (
--     NewsId               INTEGER  NOT NULL ,
--     category             VARCHAR(18)  NULL ,
--     viewCount            INTEGER  NULL ,
--     heartCount           INTEGER  NULL ,
--     publishedDate                 DATE  NULL ,
--     contentsImage        VARCHAR(18)  NULL ,
--     press                VARCHAR(18)  NULL ,
--     contents             VARCHAR(18)  NULL ,
--     title                VARCHAR(18)  NULL
-- );

-- CREATE UNIQUE INDEX XPKNews ON News (NewsId ASC);

-- CREATE SEQUENCE ChatRoomId_Seq START WITH 1 INCREMENT BY 1;
-- CREATE SEQUENCE MessageId_Seq START WITH 1 INCREMENT BY 1;
-- CREATE SEQUENCE NewsId_Seq START WITH 1 INCREMENT BY 1;

-- ALTER TABLE ChatRoom
--     ADD CONSTRAINT R_11 FOREIGN KEY (clubId) REFERENCES Club (clubId) ON DELETE SET NULL;
--
-- ALTER TABLE Message
--     ADD CONSTRAINT R_7 FOREIGN KEY (ChatRoomId) REFERENCES ChatRoom (ChatRoomId);

-- CREATE TABLE ChatRoom
-- (
--     ChatRoomId           INTEGER  NOT NULL ,
--     myProfileImage       VARCHAR(18)  NULL ,
--     otherProfileImage    VARCHAR(18)  NULL ,
--     unreadCount          INTEGER  NULL ,
--     clubId               INTEGER  NULL,
--     PRIMARY KEY (ChatRoomId)
-- );

--CREATE UNIQUE INDEX XPKChatRoom ON ChatRoom
--(ChatRoomId   ASC,memberId   ASC);

--ALTER TABLE ChatRoom
--   ADD CONSTRAINT  XPKChatRoom PRIMARY KEY (ChatRoomId,memberId);

-- CREATE TABLE Message
-- (
--     messageId	        INTEGER  NOT NULL,
--     messageTime            DATE  NULL ,
--     viewCount            INTEGER  NULL ,
--     content              VARCHAR(255)  NULL ,
--     ChatRoomId           INTEGER  NOT NULL ,
--     senderId              INTEGER  NOT NULL
-- );