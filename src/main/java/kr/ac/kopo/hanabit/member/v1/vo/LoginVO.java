package kr.ac.kopo.hanabit.member.v1.vo;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotEmpty;

@Getter
@Setter
public class LoginVO {

    @NotEmpty(message = "아이디를 입력해주세요.")
    private String useId;
    @NotEmpty(message = "비밀번호를 입력해주세요.")
    private String password;
}
