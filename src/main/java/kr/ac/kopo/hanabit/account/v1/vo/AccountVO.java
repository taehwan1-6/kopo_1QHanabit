package kr.ac.kopo.hanabit.account.v1.vo;

import lombok.Getter;

@Getter
public class AccountVO {

    private Long id;
    private String number;
    private int password;
    private String productName;
    private int balance;
    private String type; // '입출금, 예금, 적금 등'
    private String status; // '활성, 비활성, 동결, 닫힘'
    private String bankCode; // '하나, 국민'
    private String createdAt;

    private Long memberId;
}
