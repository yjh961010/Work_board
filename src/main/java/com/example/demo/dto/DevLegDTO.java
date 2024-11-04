package com.example.demo.dto;

public class DevLegDTO {
    public String getProjName() {
		return projName;
	}
	public void setProjName(String projName) {
		this.projName = projName;
	}
	public String getLongFrom() {
		return longFrom;
	}
	public void setLongFrom(String longFrom) {
		this.longFrom = longFrom;
	}
	public String getLongTo() {
		return longTo;
	}
	public void setLongTo(String longTo) {
		this.longTo = longTo;
	}
	public String getOrderCom() {
		return orderCom;
	}
	public void setOrderCom(String orderCom) {
		this.orderCom = orderCom;
	}
	public String getWorkCom() {
		return workCom;
	}
	public void setWorkCom(String workCom) {
		this.workCom = workCom;
	}
	public String getDevFlag() {
		return devFlag;
	}
	public void setDevFlag(String devFlag) {
		this.devFlag = devFlag;
	}
	public String getDevRole() {
		return devRole;
	}
	public void setDevRole(String devRole) {
		this.devRole = devRole;
	}
	public String getEnvMachine() {
		return envMachine;
	}
	public void setEnvMachine(String envMachine) {
		this.envMachine = envMachine;
	}
	public String getEnvOs() {
		return envOs;
	}
	public void setEnvOs(String envOs) {
		this.envOs = envOs;
	}
	public String getEnvLang() {
		return envLang;
	}
	public void setEnvLang(String envLang) {
		this.envLang = envLang;
	}
	public String getEnvDb() {
		return envDb;
	}
	public void setEnvDb(String envDb) {
		this.envDb = envDb;
	}
	public String getEnvMiddle() {
		return envMiddle;
	}
	public void setEnvMiddle(String envMiddle) {
		this.envMiddle = envMiddle;
	}
	public String getEnvEtc() {
		return envEtc;
	}
	public void setEnvEtc(String envEtc) {
		this.envEtc = envEtc;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	private String projName;      // 프로젝트명
    private String longFrom;      // 참여기간 From
    private String longTo;        // 참여기간 To
    private String orderCom;      // 고객사
    private String workCom;       // 근무회사
    private String devFlag;       // 개별분야
    private String devRole;       // 역할
    private String envMachine;    // 기종
    private String envOs;         // OS
    private String envLang;       // 언어
    private String envDb;         // DBMS
    private String envMiddle;     // 툴
    private String envEtc;        // 기타
    private String userNo;        // 회원일련번호

    // Getters and Setters
    // (생략)
}
