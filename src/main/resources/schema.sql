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

-- Notice 테이블 생성
CREATE TABLE Notice
(
    noticeId            INTEGER NOT NULL, -- 공지사항 ID
    clubId              INTEGER NOT NULL, -- 공지사항이 속한 Club ID
    category            VARCHAR(50) NULL, -- 카테고리(중요, 정모, 정산, 투표)
    title               VARCHAR(100) NOT NULL, -- 제목
    content             VARCHAR(255) NULL, -- 내용
    createdAt           TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 생성 일시
    views               INTEGER DEFAULT 0, -- 조회수
    attachments         VARCHAR(255) NULL, -- 첨부파일
    PRIMARY KEY (noticeId),
    FOREIGN KEY (clubId) REFERENCES Club (clubId) ON DELETE CASCADE
);
CREATE SEQUENCE NoticeId_Seq START WITH 1 INCREMENT BY 1;