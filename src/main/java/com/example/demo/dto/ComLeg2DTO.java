package com.example.demo.dto;

public class ComLeg2DTO {
    public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
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
	public String getPos() {
		return pos;
	}
	public void setPos(String pos) {
		this.pos = pos;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	private String userNo;    // 회원일련번호
    private Integer no;       // 경력순번
    private String comName;   // 회사명
    private String longFrom;  // 기간 From
    private String longTo;    // 기간 To
    private String pos;       // 직위
    private String place;     // 담당업무

    
}
