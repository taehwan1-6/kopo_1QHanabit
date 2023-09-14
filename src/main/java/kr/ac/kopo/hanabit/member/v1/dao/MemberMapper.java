package kr.ac.kopo.hanabit.member.v1.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.hanabit.member.v1.vo.LoginVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;

@Mapper
public interface MemberMapper {

	public MemberVO selectOneByUseridAndPassword(LoginVO loginVO);
}
