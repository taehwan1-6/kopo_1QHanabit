package kr.ac.kopo.hanabit.member.v1.service;

import kr.ac.kopo.hanabit.member.v1.vo.LoginVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;
import org.springframework.web.bind.annotation.RequestBody;

public interface MemberService {

    public MemberVO login(@RequestBody LoginVO loginVO);
}
