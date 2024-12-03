-- Member 테이블 생성
CREATE TABLE Member
(
    userId               INTEGER  NOT NULL,
    userName             VARCHAR(18)  NULL,
    password             VARCHAR(18)  NULL,
    nickname             VARCHAR(18)  NULL,
    email                VARCHAR(18)  NULL,
    profileImage         VARCHAR(18)  NULL,
    registrationDate     DATE  NULL,
    PRIMARY KEY (userId)
);

CREATE UNIQUE INDEX XPKMember ON Member (userId ASC);

-- Club 테이블 생성
CREATE TABLE Club
(
    clubId               INTEGER  NOT NULL,
    clubName             VARCHAR(18)  NULL,
    memberCount          INTEGER  NULL,
    description          VARCHAR(255)  NULL,
    thumbnail            VARCHAR(255)  NULL,
    maxMembers           INTEGER  NULL,
    createdAt            DATE  NULL,  -- 개설일 추가
    category             VARCHAR(50)  NULL,  -- 카테고리 추가
    hashtags             VARCHAR(255)  NULL,
    PRIMARY KEY (clubId)
);

CREATE UNIQUE INDEX XPKClub ON Club (clubId ASC);

CREATE UNIQUE INDEX XPKClub ON Club (clubId ASC);

-- Meeting 테이블 생성
CREATE TABLE Meeting
(
    meetingId           INTEGER NOT NULL,
    clubId              INTEGER NOT NULL,
    meetingDate         TIMESTAMP NOT NULL,
    meetingTitle        VARCHAR(100) NOT NULL,
    meetingDescription   VARCHAR(255) NULL,
    location            VARCHAR(100) NULL,
    maxParticipants     INTEGER NULL,
    PRIMARY KEY (meetingId),
    FOREIGN KEY (clubId) REFERENCES Club (clubId) ON DELETE CASCADE
);

CREATE UNIQUE INDEX XPKMeeting ON Meeting (meetingId ASC);
CREATE SEQUENCE MeetingId_Seq START WITH 1 INCREMENT BY 1;

-- Notice 테이블 생성
CREATE TABLE Notice
(
    noticeId            INTEGER NOT NULL,
    clubId              INTEGER NOT NULL,
    title               VARCHAR(100) NOT NULL,
    content             VARCHAR(255) NULL,
    pinned              BOOLEAN DEFAULT FALSE,
    createDate          DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (noticeId),
    FOREIGN KEY (clubId) REFERENCES Club (clubId) ON DELETE CASCADE
);

CREATE UNIQUE INDEX XPKNotice ON Notice (noticeId ASC);
CREATE SEQUENCE NoticeId_Seq START WITH 1 INCREMENT BY 1;

-- Join 테이블 생성
CREATE TABLE Join
(
    userId              INTEGER NOT NULL,
    clubId              INTEGER NOT NULL,
    role                VARCHAR2(50) NULL,
    PRIMARY KEY (userId, clubId),
    FOREIGN KEY (userId) REFERENCES Member (userId),
    FOREIGN KEY (clubId) REFERENCES Club (clubId)
);

CREATE UNIQUE INDEX XPKJoin ON Join (userId ASC, clubId ASC);
CREATE SEQUENCE ClubId_Seq START WITH 1 INCREMENT BY 1;