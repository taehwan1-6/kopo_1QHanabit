package kr.ac.kopo.hanabit.test.member;

import kr.ac.kopo.hanabit.member.v1.service.MemberService;
import kr.ac.kopo.hanabit.member.v1.vo.LoginVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MemberTest {

    @Autowired
    private MemberService memberService;

    @Test
    public void loginTest() {
        LoginVO loginVO = new LoginVO();
        loginVO.setUseId("user1");
        loginVO.setPassword("pass");


        MemberVO memberVO = memberService.login(loginVO);

        Assertions.assertEquals(memberVO.getName(), "강태환");
        
    }
}
