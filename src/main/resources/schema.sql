-- Member 테이블 생성
CREATE TABLE Member
(
    memberId              INTEGER NOT NULL,
    memberName            VARCHAR(50) NULL,
    nickname              VARCHAR(30) NULL,
    phone                 VARCHAR(20) NULL,
    email                 VARCHAR(100) NULL,
    password              VARCHAR(100) NULL,
    bio                   VARCHAR(255) NULL,
    website               VARCHAR(255) NULL,
    profileImageUrl       VARCHAR(255) NULL,
    createdAt             TIMESTAMP NULL,
    PRIMARY KEY (memberId)
);

CREATE UNIQUE INDEX XPKMember ON Member (memberId ASC);

-- Club 테이블 생성
CREATE TABLE Club
(
    clubId               INTEGER NOT NULL,
    clubName             VARCHAR(50) NULL,    -- 길이 증가
    memberCount          INTEGER NULL,
    description          VARCHAR(255) NULL,
    thumbnail            VARCHAR(255) NULL,
    maxMembers           INTEGER NULL,
    createdAt            TIMESTAMP NULL,       -- 데이터 타입 수정
    category             VARCHAR(50) NULL,
    hashtags             VARCHAR(255) NULL,
    leaderId             INTEGER NULL,         -- 리더를 나타내는 외래 키 추가
    PRIMARY KEY (clubId),
    FOREIGN KEY (leaderId) REFERENCES Member (memberId) ON DELETE SET NULL  -- 리더 외래 키 설정
);

CREATE UNIQUE INDEX XPKClub ON Club (clubId ASC);

-- Meeting 테이블 생성
CREATE TABLE Meeting
(
    meetingId           INTEGER NOT NULL,
    clubId              INTEGER NOT NULL,
    dateTime            TIMESTAMP NOT NULL,
    meetingTitle        VARCHAR(100) NOT NULL,
    meetingDescription   VARCHAR(255) NULL,
    location            VARCHAR(100) NULL,
    participantLimit    INTEGER NULL,
    participationFee    DECIMAL(10, 2) NULL,
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
    category            VARCHAR(50) NULL,
    title               VARCHAR(100) NOT NULL,
    content             VARCHAR(255) NULL,
    pinned              BOOLEAN DEFAULT FALSE,
    createdAt          TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    views               INTEGER DEFAULT 0,
    attachments         VARCHAR(255) NULL,
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
    role                VARCHAR(50) NULL,
    PRIMARY KEY (userId, clubId),
    FOREIGN KEY (userId) REFERENCES Member (memberId),
    FOREIGN KEY (clubId) REFERENCES Club (clubId)
);

CREATE UNIQUE INDEX XPKJoin ON Join (userId ASC, clubId ASC);
CREATE SEQUENCE ClubId_Seq START WITH 1 INCREMENT BY 1;