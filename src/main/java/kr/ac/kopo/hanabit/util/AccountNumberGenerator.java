package kr.ac.kopo.hanabit.util;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Random;

@Component
@RequiredArgsConstructor
public class AccountNumberGenerator {
    private final String digits = "0123456789";
    private final int accountNumberLength = 14; // 원하는 계좌번호 길이

    public String generateAccountNumber() {
        Random random = new Random();
        StringBuilder accountNumber = new StringBuilder(accountNumberLength);

        // 무작위로 숫자를 선택하여 계좌번호 생성
        for (int i = 0; i < accountNumberLength; i++) {
            int randomIndex = random.nextInt(digits.length());
            char digit = digits.charAt(randomIndex);
            accountNumber.append(digit);
        }

        return accountNumber.toString();
    }

    public void run() {
        String generatedAccountNumber = generateAccountNumber();
        System.out.println("Generated Account Number: " + generatedAccountNumber);
    }
}

