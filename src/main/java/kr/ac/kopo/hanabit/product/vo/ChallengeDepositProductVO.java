package kr.ac.kopo.hanabit.product.vo;

import lombok.Getter;

@Getter
public class ChallengeDepositProductVO {

    private Long id;
    private String thumbnailImg;
    private String name;
    private String description;
    private int numberSubscribers;
    private int limitedSubscribers;
    private int period;
    private int authenticationFrequency;
    private double baseRate;
    private double preferRate;
    private int minPayment;
    private int maxPayment;
    private String authenticationDescription;
    private String authenticationImg1;
    private String authenticationImg2;
    private String authenticationImg3;

}
