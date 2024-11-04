package com.example.demo.dto;

public class ComUserDTO {
    private String userId;     // 회원아이디
    private String userPwd;    // 회원비밀번호
    private String userNo;     // 회원일련번호

    // Getters and Setters
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }
}
