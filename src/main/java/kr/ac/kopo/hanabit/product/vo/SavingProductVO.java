package kr.ac.kopo.hanabit.product.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class SavingProductVO {

    private int id;
    private String name;
    private int minPayment;
    private int maxPayment;
    private int minPeriod;
    private int maxPeriod;
    private int maxCount;
    private double baseRate;
    private String imgName;
    private String imgPath;
    private String createdAt;
}
