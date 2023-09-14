package kr.ac.kopo.hanabit.member.v1.vo;

import lombok.Getter;

@Getter
public class MemberVO {

    private Long id;
    private String useId;
    private String password;
    private String residentRegistrationNumber;
    private String name;
    private String phone;
    private String email;
    private String address;
    private String createdAt;
    private String profileImage;

}
