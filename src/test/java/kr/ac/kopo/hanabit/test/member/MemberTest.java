package kr.ac.kopo.hanabit.test.member;

import kr.ac.kopo.hanabit.member.v1.service.MemberServiceImpl;
import kr.ac.kopo.hanabit.member.v1.vo.LoginVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MemberTest {

    @Autowired
    private MemberServiceImpl memberService;

    @Test
    public void loginTest() {
        // given
        LoginVO loginVO = LoginVO.builder()
                .useId("user1")
                .password("pass")
                .build();

        // when
        MemberVO memberVO = memberService.login(loginVO);

        // then
        Assertions.assertEquals(memberVO.getName(), "강태환");

    }

}
