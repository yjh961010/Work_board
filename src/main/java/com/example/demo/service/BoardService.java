package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.IsMasterDTO;
import com.example.demo.mapper.BoardMapper;

@Service
public class BoardService {
	@Autowired
	BoardMapper boardmapper;
	
	
    public int addMember(IsMasterDTO isMasterDTO) {
        return boardmapper.addMember(isMasterDTO);
    }
	public List<IsMasterDTO> getAllMembers(){
		List<IsMasterDTO> mList= boardmapper.getAllMembers();
		return mList;
	}
	public IsMasterDTO getMem(String userNo) {
	    return boardmapper.getMem(userNo); // 반환 타입을 IsMasterDTO로 변경
	}
	public int updateMember(IsMasterDTO isMasterDTO) {
		return boardmapper.updateMember(isMasterDTO);
	}

}

