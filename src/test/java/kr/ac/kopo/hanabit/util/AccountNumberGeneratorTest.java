package kr.ac.kopo.hanabit.util;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Random;

@SpringBootTest
class AccountNumberGeneratorTest {

    private final String digits = "0123456789";
    private final String digitsWithoutZero = "123456789"; // 0을 제외한 숫자
    private final int accountNumberLength = 14; // 원하는 계좌번호 길이

    @Test
    public String generateAccountNumber() {
        Random random = new Random();
        StringBuilder accountNumber = new StringBuilder(accountNumberLength);

        // 첫 번째 숫자는 0이 아닌 1-9 사이의 숫자로 생성
        int firstDigitIndex = random.nextInt(digitsWithoutZero.length());
        char firstDigit = digitsWithoutZero.charAt(firstDigitIndex);
        accountNumber.append(firstDigit);

        // 나머지 숫자는 무작위로 선택하여 계좌번호 생성
        for (int i = 1; i < accountNumberLength; i++) {
            int randomIndex = random.nextInt(digits.length());
            char digit = digits.charAt(randomIndex);
            accountNumber.append(digit);
        }
        
        return accountNumber.toString();
    }

    @Test
    public void run() {
        String generatedAccountNumber = generateAccountNumber();
        System.out.println("Generated Account Number: " + generatedAccountNumber);
    }
}