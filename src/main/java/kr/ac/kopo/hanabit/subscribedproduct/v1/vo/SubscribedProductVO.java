package kr.ac.kopo.hanabit.subscribedproduct.v1.vo;

import lombok.Builder;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@Builder
@RequiredArgsConstructor
// 챌린지 예금 상품 가입 (가입한 상품 VO)
public class SubscribedProductVO {

    private final Long id; // ID
    private final String accountNumber; // 가입상품 계좌번호 -> 자바단에서 넣기
    private final int accountPassword; // 가입상품 계좌 비밀번호
    private final String bankCode; // 은행코드 ex) "하나"

    private final String linkedAccountNumber; // 연결 입출금 계좌번호
    private final String smsExpiryNotification; // sms만기알림
    private final String name; // 상품명
    private final String type; // 상품유형
    private final int subscriptionPayment; // 가입금액
    private final int subscriptionPeriod; // 가입기간
    private final int weeklyAuthFrequency; // 주 인증빈도
    private final int dailyAuthFrequency; // 일 인증빈도
    private final String subscriptionDate; // 가입일자 -> 자바단에서 넣기?
    private final String expiryDate; // 만기일자 -> 자바단에서 넣기
    private final int authCount; // 인증된 횟수

    // FK들
    private final String memberUseId; // 회원_아이디(FK) -> 자바단에서 넣기
    private final Long challengeDepositProductId; // 챌린지 예금 상품_아이디(FK)

    // 생성자와 관련된 코드
}

