package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.IsMasterDTO;


@Mapper
public interface BoardMapper {
	int addMember(IsMasterDTO isMasterDTO); // 회원 추가
	List<IsMasterDTO> getAllMembers(); // 전체 멤버 목록 가져오기
	IsMasterDTO getMem(String userNo);
	int updateMember(IsMasterDTO isMasterDTO);
	   
	}


