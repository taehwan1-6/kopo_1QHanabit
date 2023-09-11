REM  ***********************************************************************************************************
REM  SCRIPT 용도 : 1QHanabit, OpenBanking, HanaBank 관련 SQL Script 
REM  작성자      : 강태환
REM  작성일      : 2023-09-04
REM  주  의      : 1)
REM
REM  수정사항     2) 230911 챌린지 예금 상품, 챌린지 예금 상품 리뷰 추가
REM             1) 230905 적금상품 추가
REM
REM  ***********************************************************************************************************


--------------------------------------------------------------------------------
--  1QHanabit Main 서버
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  챌린지 예금 상품(TB_CHALLENGE_PRODUCTS) 정보 관리
--------------------------------------------------------------------------------

CREATE TABLE "TB_CHALLENGE_DEPOSIT_PRODUCTS"
(
    "ID"                         NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "THUMBNAIL_IMG"              VARCHAR2(500) NULL,
    "NAME"                       VARCHAR2(100) NOT NULL,
    "DESCRIPTION"                VARCHAR2(500) NOT NULL,
    "NUMBER_SUBSCRIBERS"         NUMBER        NULL,
    "LIMITED_SUBSCRIBERS"        NUMBER        NULL,
    "PERIOD"                     NUMBER        NOT NULL,
    "AUTHENTICATION_FREQUENCY"   NUMBER        NOT NULL,
    "BASE_RATE"                  NUMBER        NOT NULL,
    "PREFER_RATE"                NUMBER        NOT NULL,
    "MIN_PAYMENT"                NUMBER        NOT NULL,
    "MAX_PAYMENT"                NUMBER        NOT NULL,
    "AUTHENTICATION_DESCRIPTION" VARCHAR2(500) NULL,
    "AUTHENTICATION_IMG"         VARCHAR2(500) NULL,
    "CREATED_AT"         DATE DEFAULT SYSDATE NOT NULL,
    "MODIFIED_AT"         DATE DEFAULT SYSDATE NOT NULL
);

INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (8, null, '1만보 걷기 챌린지 예금', '1만보 이상 걷고 건강 챙기고 우대금리까지 챙기세요!', null, null, 3, 3, 2.2, 4.2, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (7, null, '할일 3가지 쓰기', 'To-do를 쓰고 삶의 주도권과 함께 우대금리를 받아보세요.', null, null, 1, 7, 4.5, 6.5, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (6, null, '1만보 걷기 챌린지 예금', '1만보 이상 걷고 건강 챙기고 우대금리까지 챙기세요!', null, null, 3, 3, 2.2, 4.2, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (5, null, '할일 3가지 쓰기', 'To-do를 쓰고 삶의 주도권과 함께 우대금리를 받아보세요.', null, null, 1, 7, 4.5, 6.5, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (4, null, '1만보 걷기 챌린지 예금', '1만보 이상 걷고 건강 챙기고 우대금리까지 챙기세요!', null, null, 3, 3, 2.2, 4.2, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (3, null, '할일 3가지 쓰기', 'To-do를 쓰고 삶의 주도권과 함께 우대금리를 받아보세요.', null, null, 1, 7, 4.5, 6.5, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (2, '/assets/images/products/challengedeposit/product-2.png', '할일 3가지 쓰기', 'To-do를 쓰고 삶의 주도권과 함께 우대금리를 받아보세요.', null, null, 1, 7, 4.5, 6.5, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);
INSERT INTO ADMIN.TB_CHALLENGE_DEPOSIT_PRODUCTS (ID, THUMBNAIL_IMG, NAME, DESCRIPTION, NUMBER_SUBSCRIBERS, LIMITED_SUBSCRIBERS, PERIOD, AUTHENTICATION_FREQUENCY, BASE_RATE, PREFER_RATE, MIN_PAYMENT, MAX_PAYMENT, AUTHENTICATION_DESCRIPTION, AUTHENTICATION_IMG) VALUES (1, '/assets/images/products/challengedeposit/product-1.jpeg', '1만보 걷기 챌린지 예금', '1만보 이상 걷고 건강 챙기고 우대금리까지 챙기세요!', null, null, 3, 3, 2.2, 4.2, 100000, 3000000, '~ 이런식으로 사진찍어서 인증하면 됩니다.', null);

ALTER TABLE TB_CHALLENGE_DEPOSIT_PRODUCTS
    ADD (
        CREATED_AT DATE DEFAULT SYSDATE NOT NULL,
        MODIFIED_AT DATE DEFAULT SYSDATE NOT NULL
        );


--------------------------------------------------------------------------------
--  챌린지 예금 상품 후기(TB_CHALLENGE_PRODUCT_REVIEWS) 정보 관리
--------------------------------------------------------------------------------

CREATE TABLE "TB_CHALLENGE_DEPOSIT_PRODUCT_REVIEWS"
(
    "ID"                   NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "CONTENT"              VARCHAR2(500)        NOT NULL,
    "RATING"               VARCHAR2(100)        NOT NULL,
    "CREATED_AT"           DATE DEFAULT SYSDATE NOT NULL,
    "MODIFIED_AT"          DATE DEFAULT SYSDATE NOT NULL,
    "WRITER"               VARCHAR2(100)        NOT NULL,
    "CHALLENGE_PRODUCT_ID" NUMBER               NOT NULL,
    constraints            "FK_CHALLENGE_PRODUCT_ID" foreign key (CHALLENGE_PRODUCT_ID)
        references TB_CHALLENGE_DEPOSIT_PRODUCTS(ID)
);



--------------------------------------------------------------------------------
--  적금상품(SAVING_PRODUCTS) 정보 관리
--------------------------------------------------------------------------------

CREATE TABLE "TB_SAVING_PRODUCTS"
(
    "ID"          NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "NAME"        VARCHAR2(100)        NOT NULL,
    "MIN_PAYMENT" NUMBER               NOT NULL,
    "MAX_PAYMENT" NUMBER               NOT NULL,
    "MIN_PERIOD"  NUMBER               NOT NULL,
    "MAX_PERIOD"  NUMBER               NOT NULL,
    "MAX_COUNT"   NUMBER               NOT NULL,
    "BASE_RATE"   FLOAT                NOT NULL,
    "IMG_NAME"    VARCHAR2(100)        NULL,
    "IMG_PATH"    VARCHAR2(100)        NULL,
    "CREATED_AT"  DATE DEFAULT SYSDATE NOT NULL
);

purge recyclebin;

-- 적금상품 데이터 INSERT
INSERT INTO ADMIN.TB_SAVING_PRODUCTS
("NAME", "MIN_PAYMENT", "MAX_PAYMENT", "MIN_PERIOD", "MAX_PERIOD", "MAX_COUNT", "BASE_RATE")
VALUES ('커피값 아끼기 적금', 1000, 5000, 6, 6, 5, 3.2);

INSERT INTO "TB_SAVING_PRODUCTS"
("NAME", "MIN_PAYMENT", "MAX_PAYMENT", "MIN_PERIOD", "MAX_PERIOD", "MAX_COUNT", "BASE_RATE")
VALUES ('외식값 아끼기 적금', 10000, 20000, 6, 6, 1, 2.4);

INSERT INTO "TB_SAVING_PRODUCTS"
("NAME", "MIN_PAYMENT", "MAX_PAYMENT", "MIN_PERIOD", "MAX_PERIOD", "MAX_COUNT", "BASE_RATE")
VALUES ('배달비 아끼기 적금', 15000, 30000, 6, 6, 3, 3.2);

INSERT INTO "TB_SAVING_PRODUCTS"
("NAME", "MIN_PAYMENT", "MAX_PAYMENT", "MIN_PERIOD", "MAX_PERIOD", "MAX_COUNT", "BASE_RATE")
VALUES ('편의점/마트 아끼기 적금', 10000, 30000, 6, 6, 2, 2.8);

INSERT INTO "TB_SAVING_PRODUCTS"
("NAME", "MIN_PAYMENT", "MAX_PAYMENT", "MIN_PERIOD", "MAX_PERIOD", "MAX_COUNT", "BASE_RATE")
VALUES ('뭐든 아끼기 적금', 5000, 20000, 6, 6, 2, 3);



--------------------------------------------------------------------------------
--  예금상품(DEPOSIT_PRODUCTS) 정보 관리
--------------------------------------------------------------------------------

-- 컬럼추가
-- -> 수정날짜, 상품특징(설명), 금리상세정보id
CREATE TABLE "DEPOSIT_PRODUCTS"
(
    "KEY"         VARCHAR(255)         NOT NULL,
    "NAME"        VARCHAR2(100)        NOT NULL,
    "CONTEXT"     VARCHAR2(500)        NOT NULL,
    "MIN_PAYMENT" NUMBER               NOT NULL,
    "MAX_PAYMENT" NUMBER               NOT NULL,
    "MIN_PERIOD"  NUMBER               NOT NULL,
    "MAX_PERIOD"  NUMBER               NOT NULL,
    "BASE_RATE"   FLOAT                NOT NULL,
    "PREF_RATE"   FLOAT                NOT NULL,
    "CREATED_AT"  DATE DEFAULT SYSDATE NOT NULL
);

COMMENT ON COLUMN "DEPOSIT_PRODUCTS"."MIN_PERIOD" IS '개월수';

COMMENT ON COLUMN "DEPOSIT_PRODUCTS"."MAX_PERIOD" IS '개월수';

COMMENT ON COLUMN "DEPOSIT_PRODUCTS"."BASE_RATE" IS '예금 만기시 기본금리 적용, 중도해지시 원금만 수령';

COMMENT ON COLUMN "DEPOSIT_PRODUCTS"."PREF_RATE" IS '예금 만기시 얻은 스탬프 갯수가 80%이상일 경우 우대금리 적용';

CREATE TABLE "SAVING_PRODUCTS"
(
    "ID"          NUMBER               NOT NULL,
    "NAME"        VARCHAR2(100)        NOT NULL,
    "CONTEXT"     VARCHAR2(500)        NOT NULL,
    "MIN_PAYMENT" NUMBER               NOT NULL,
    "MAX_PAYMENT" NUMBER               NOT NULL,
    "MIN_PERIOD"  NUMBER               NOT NULL,
    "MAX_PERIOD"  NUMBER               NOT NULL,
    "MAX_COUNT"   NUMBER               NOT NULL,
    "BASE_RATE"   FLOAT                NOT NULL,
    "PREF_RATE"   FLOAT                NOT NULL,
    "CREATED_AT"  DATE DEFAULT SYSDATE NOT NULL,
    "MAIN_IMAGE"  VARCHAR2(100)        NULL
);



CREATE TABLE "SAVING_PRODUCT_DETAILS"
(
    "ID"                 VARCHAR(255)  NOT NULL,
    "CONTEXT"            VARCHAR2(500) NOT NULL,
    "RATE"               FLOAT         NOT NULL,
    "SAVING_PRODUCTS_ID" NUMBER        NOT NULL
);

COMMENT ON COLUMN "SAVING_PRODUCT_DETAILS"."RATE" IS 'EX) 100%만기 = 금리4% / 80%이상 = 3% / 80%미만 = 2%';

CREATE TABLE "DEPOSIT_PRODUCT_DETAILS"
(
    "ID"      VARCHAR(255)  NOT NULL,
    "CONTEXT" VARCHAR2(500) NOT NULL,
    "RATE"    FLOAT         NOT NULL,
    "KEY"     VARCHAR(255)  NOT NULL
);

COMMENT ON COLUMN "DEPOSIT_PRODUCT_DETAILS"."RATE" IS 'EX) 100%만기 = 금리4% / 80%이상 = 3% / 80%미만 = 2%';


--------------------------------------------------------------------------------
--  OpenBanking 서버
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  카드(TB_CARDS) 정보 관리
--------------------------------------------------------------------------------

-- DROP
DROP TABLE TB_CARDS;


-- CREATE문
CREATE TABLE "TB_CARDS"
(
    "NUMBER"         VARCHAR2(100)                            NOT NULL,
    "PASSWORD"       VARCHAR2(100)                            NOT NULL,
    "NAME"           VARCHAR2(100)                            NOT NULL,
    "EXPIRY_DATE"    DATE DEFAULT SYSDATE + INTERVAL '5' YEAR NOT NULL,
    "STATE_CODE"     VARCHAR2(100)                            NOT NULL,
    "CREATED_AT"     DATE DEFAULT SYSDATE                     NOT NULL,
    "BANK_CODE"      VARCHAR2(100)                            NOT NULL,
    "ACCOUNT_NUMBER" VARCHAR2(100)                            NOT NULL
);

ALTER TABLE "TB_CARDS"
    ADD CONSTRAINT "PK_TB_CARDS" PRIMARY KEY (
                                              "NUMBER"
        );

-- SELECT 
select *
from t_board
ORDER BY NO ASC;

select no, title, writer, content, reg_date as regDate, count_number
from t_board
where no = 11
order by no DESC;

-- UPDATE 
UPDATE T_BOARD
SET title   = 'zz'
  , writer  = 'zz'
  , content = 'zz'
WHERE NO = 12;
COMMIT;

-- DELETE 
delete
from t_board
where no = 12;
COMMIT;

-- INSERT
insert into t_board (no, title, writer, content)
values (1, '직접만든제목', '강태환', '안녕하세요');
COMMIT;

--------------------------------------------------------------------------------
--  카드결제내역(TB_CARD_PAYMENTS) 정보 관리
--------------------------------------------------------------------------------

-- DROP
DROP TABLE TB_CARD_PAYMENTS;


-- CREATE문
CREATE TABLE "TB_CARD_PAYMENTS"
(
    "ID"            NUMBER               NOT NULL,
    "AMONUT"        NUMBER               NOT NULL,
    "STATE_CODE"    NUMBER               NOT NULL,
    "STORE_NAME"    VARCHAR2(100)        NOT NULL,
    "CATEGORY_CODE" VARCHAR2(100)        NOT NULL,
    "CREATED_AT"    DATE DEFAULT SYSDATE NOT NULL,
    constraints     TB_CARDS_number_fk foregin key (CARD_NUMBER)
        reference TB_CARDS(NUMBER)
);

create sequence seq_card_payments_id nocache;

-- SELECT
select *
from t_member
ORDER BY NO ASC;

select no, id, password, name, addr
from t_member
where no = 11
order by no DESC;

-- UPDATE
UPDATE t_member
SET id       = 'zz'
  , password = 'zz'
  , name     = 'zz'
  , addr     = 'zz'
WHERE NO = 12;
COMMIT;

-- DELETE
delete
from t_member
where no = 12;
COMMIT;

-- INSERT
insert into t_member (no, id, password, name, addr)
values (seq_t_member_no.nextval, 'user0', 'pass', '강태환', '한국');
COMMIT;



--------------------------------------------------------------------------------
--  댓글(t_reply) 정보 관리
--------------------------------------------------------------------------------
create table t_reply
(
    NO          number(5) PRIMARY KEY,
    writer      varchar2(200) NOT NULL,
    content     varchar2(200) NOT NULL,
    reg_date    DATE DEFAULT sysdate,
    board_no    number(5)     NOT NULL,
    constraints t_reply_board_no_fk foregin key (board_no)
        reference t_board(no)
);

create sequence seq_t_reply_no nocache;

truncate table seq_t_reply_no;

