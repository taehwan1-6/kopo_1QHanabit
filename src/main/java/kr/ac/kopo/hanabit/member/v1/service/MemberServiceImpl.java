package kr.ac.kopo.hanabit.member.v1.service;

import kr.ac.kopo.hanabit.member.v1.dao.MemberMapper;
import kr.ac.kopo.hanabit.member.v1.vo.LoginVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

    private final MemberMapper memberMapper;

    @Override
    public MemberVO login(@RequestBody LoginVO loginVO) {
        MemberVO memberVO = memberMapper.selectOneByUseridAndPassword(loginVO);

        return memberVO;
    }
}
