package kr.ac.kopo.hanabit.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class ExpiryDateGenerator {

    public String getExpiryDateGenerator(int period) {
        // 현재 시간을 얻습니다.
        LocalDate currentDate = LocalDate.now();

        // 3개월을 더합니다.
        LocalDate futureDate = currentDate.plusMonths(period);

        // 날짜를 원하는 형식으로 포맷팅합니다.
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedFutureDate = futureDate.format(formatter);

//        System.out.println("현재 시간: " + currentDate);
//        System.out.println("3개월 후 시간: " + formattedFutureDate);

        return formattedFutureDate;
    }
}
