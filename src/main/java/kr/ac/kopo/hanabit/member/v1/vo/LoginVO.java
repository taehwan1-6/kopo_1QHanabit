package kr.ac.kopo.hanabit.member.v1.vo;

import lombok.Builder;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import javax.validation.constraints.NotEmpty;

@Getter
@RequiredArgsConstructor
@Builder
// -> 원래 VO에 @Getter 이외는 별로 쓰면 안좋다고 한다. 그런데 써야할때는 써야하므로 잘 생각해서 사용하면 된다.
// -> 현재는 Builder pattern 사용하려면 생성자 필요해서 위의 @RequiredArgsConstructor 도 적용
public class LoginVO {

    @NotEmpty(message = "아이디를 입력해주세요.")
    private final String useId;
    @NotEmpty(message = "비밀번호를 입력해주세요.")
    private final String password;
}
