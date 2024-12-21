-- Member 테이블 생성
CREATE TABLE Member
(
    memberId              INTEGER NOT NULL,
    memberName            VARCHAR(50) NOT NULL,
    nickname              VARCHAR(30) NOT NULL,
    phone                 VARCHAR(20) NOT NULL,
    email                 VARCHAR(100) NOT NULL,
    password              VARCHAR(15) NOT NULL,
    bio                   VARCHAR(50) NULL,
    website               VARCHAR(255) NULL,
    profileImageUrl       VARCHAR(255) NULL,
    createdAt             TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (memberId)
);
CREATE SEQUENCE MemberId_Seq START WITH 1 INCREMENT BY 1;
GRANT SELECT ON MemberId_Seq TO dbp240209;


-- Club 테이블 생성
CREATE TABLE Club
(
    clubId               INTEGER NOT NULL,
    clubName             VARCHAR(50) NOT NULL,    -- 길이 증가
    memberCount          INTEGER NULL,
    description          VARCHAR(255) NOT NULL,
    thumbnail            VARCHAR(255) NOT NULL,
    maxMembers           INTEGER NOT NULL,
    createdAt            TIMESTAMP DEFAULT CURRENT_TIMESTAMP,       -- 데이터 타입 수정
    category             VARCHAR(50) NULL,
    hashtags             VARCHAR(255) NOT NULL,
    leaderId             INTEGER NULL,         -- 리더를 나타내는 외래 키 추가
    PRIMARY KEY (clubId),
    FOREIGN KEY (leaderId) REFERENCES Member (memberId) ON DELETE SET NULL  -- 리더 외래 키 설정
);
CREATE SEQUENCE ClubId_Seq START WITH 1 INCREMENT BY 1;

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
CREATE SEQUENCE MeetingId_Seq START WITH 1 INCREMENT BY 1;