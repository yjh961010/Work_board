package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dto.IsMasterDTO;
import com.example.demo.mapper.BoardMapper;

@Controller
public class HomeController {
	
	@Autowired BoardMapper boardmapper;
	
	@GetMapping(value = {"/", "/index.do"})
	public String home(Model model) {
	    List<IsMasterDTO> members = boardmapper.getAllMembers();
	    model.addAttribute("members", members); // Model에 데이터 추가
	    System.out.println(members);
	    return "index"; // index.jsp로 이동
	}
	@GetMapping("/main.do")
    public String main(Model model) {
		 List<IsMasterDTO> members = boardmapper.getAllMembers();
		    model.addAttribute("members", members);
        return "main"; // main.jsp를 반환
    }


	
	@GetMapping("/left")
	public String left() {
	    return "left"; // /WEB-INF/Views/left.jsp 반환
	}

	@GetMapping("/main")
	public String main() {
	    return "main"; // /WEB-INF/Views/main.jsp 반환
	}
}
