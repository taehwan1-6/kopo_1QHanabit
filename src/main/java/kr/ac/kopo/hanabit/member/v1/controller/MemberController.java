package kr.ac.kopo.hanabit.member.v1.controller;

import kr.ac.kopo.hanabit.member.v1.dao.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/members")
public class MemberController {

    private final MemberMapper memberMapper;

    @GetMapping("/login")
    public String loginForm() {

        return "login/login";
    }


}
