package com.example.demo.dto;

public class IsMasterDTO {
	
	// user_no_seq -> userNo로 대입
	
	
	
    public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	public String getHanName() {
		return hanName;
	}
	public void setHanName(String hanName) {
		this.hanName = hanName;
	}
	public String getJuminNo() {
		return juminNo;
	}
	public void setJuminNo(String juminNo) {
		this.juminNo = juminNo;
	}
	public String getSajinNm() {
		return sajinNm;
	}
	public void setSajinNm(String sajinNm) {
		this.sajinNm = sajinNm;
	}
	public String getBirthYmd() {
		return birthYmd;
	}
	public void setBirthYmd(String birthYmd) {
		this.birthYmd = birthYmd;
	}
	public String getBirthRn() {
		return birthRn;
	}
	public void setBirthRn(String birthRn) {
		this.birthRn = birthRn;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMarryYn() {
		return marryYn;
	}
	public void setMarryYn(String marryYn) {
		this.marryYn = marryYn;
	}
	public String getWorkYear() {
		return workYear;
	}
	public void setWorkYear(String workYear) {
		this.workYear = workYear;
	}
	public String getJoinSt() {
		return joinSt;
	}
	public void setJoinSt(String joinSt) {
		this.joinSt = joinSt;
	}
	public String getHopeWork() {
		return hopeWork;
	}
	public void setHopeWork(String hopeWork) {
		this.hopeWork = hopeWork;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTechGrd() {
		return techGrd;
	}
	public void setTechGrd(String techGrd) {
		this.techGrd = techGrd;
	}
	public String getAlcQt() {
		return alcQt;
	}
	public void setAlcQt(String alcQt) {
		this.alcQt = alcQt;
	}
	private String userNo;       // 회원일련번호
    private String korName;      // 한글이름
    private String engName;      // 영문이름
    private String hanName;      // 한문이름
    private String juminNo;      // 주민번호
    private String sajinNm;      // 사진파일명
    private String birthYmd;     // 생년월일
    private String birthRn;      // 양음력
    private String sex;          // 성별
    private String marryYn;      // 결혼유무
    private String workYear;     // 년차
    private String joinSt;       // 입사유형
    private String hopeWork;     // 희망직무
    private String addr;         // 주소
    private String tel;          // 연락처
    private String email;        // 이메일
    private String techGrd;      // 기술등급
    private String alcQt;        // 주량

    // Getters and Setters
    // (생략)
}
