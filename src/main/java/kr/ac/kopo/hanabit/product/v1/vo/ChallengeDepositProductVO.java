package kr.ac.kopo.hanabit.product.v1.vo;

import lombok.Getter;

@Getter
public class ChallengeDepositProductVO {

    private Long id;
    private String thumbnailImg;
    private String name;
    private String description;
    private String type;
    private int period;

    private int numberSubscribers;
    private int limitedSubscribers;

    private int weeklyAuthFrequency;
    private int dailyAuthFrequency;

    private double baseRate;
    private double preferRate;

    private int minPayment;
    private int maxPayment;

    private String authenticationDescription;
    private String authenticationImg1;
    private String authenticationImg2;
    private String authenticationImg3;

    private String createdAt;
    private String modifiedAt;
}
