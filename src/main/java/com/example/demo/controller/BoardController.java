package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.IsMasterDTO;
import com.example.demo.mapper.BoardMapper;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    BoardMapper boardMapper;
    @Autowired
    private ServletContext servletContext;

  
    @GetMapping("/editboard.do")
    public String editBoard() {
    	return "page4";
    }
    @PostMapping("/addmember.do")
    public String addMember(@ModelAttribute IsMasterDTO isMasterDTO,
                            @RequestParam("fileInput") MultipartFile fileInput,
                            HttpServletRequest req) {
        
        String addr = req.getParameter("addr1") + " " + req.getParameter("addr2");
        String phone = req.getParameter("phone1") + "-" + req.getParameter("phone2") + "-" + req.getParameter("phone3");
        String juminNo = req.getParameter("juminNo1") + " " + req.getParameter("juminNo2");
        
        String birthYear = req.getParameter("birth1");
        String birthMonth = req.getParameter("birth2");
        String birthDay = req.getParameter("birth3");
        
        String birthYmd = birthYear + birthMonth + birthDay; // YYYYMMDD 형식으로 합칩니다.
        
        isMasterDTO.setAddr(addr);
        isMasterDTO.setTel(phone);
        isMasterDTO.setJuminNo(juminNo);
        isMasterDTO.setBirthYmd(birthYmd);

        // 파일 업로드 처리
        if (!fileInput.isEmpty()) {
            String fileName = fileInput.getOriginalFilename();
            try {
            	String path = "C:\\Users\\jangho\\Desktop\\SpringBoot\\springBoot\\TestBoard\\src\\main\\resources\\static\\image";
                File file = new File(path, fileName);
                fileInput.transferTo(file); // 파일 저장
                isMasterDTO.setSajinNm(fileName); // DTO에 파일 이름 저장
            } catch (IOException e) {
                e.printStackTrace();
                req.setAttribute("url", "/");
                req.setAttribute("msg", "파일 업로드 실패");
                return "message"; // 메시지 페이지로 이동
            }
        }

        // 데이터베이스에 추가
        int res = boardMapper.addMember(isMasterDTO);
        
        if (res > 0) {
            req.setAttribute("url", "/");
            req.setAttribute("msg", "추가 성공!");
        } else {
            req.setAttribute("url", "/");
            req.setAttribute("msg", "추가 실패");
        }
        
        return "message"; // 메시지 페이지로 이동
    }

    @PostMapping("/editmem.do")
    public String editMembers(@RequestParam("userNo") String userNo, Model model) {
        System.out.println(userNo);
        IsMasterDTO mdto = boardMapper.getMem(userNo);
        
        // 전화번호 분리
        String[] phoneParts = mdto.getTel().split("-");
        System.out.println(phoneParts);

        // 생년월일 나누기
        String birthYmd = mdto.getBirthYmd();
        String birthYear = birthYmd.substring(0, 4);
        String birthMonth = birthYmd.substring(4, 6);
        String birthDay = birthYmd.substring(6, 8);
        
        // 주민등록번호 분리
        String[] juminParts = mdto.getJuminNo().split(" ");
        String juminNo1 = juminParts[0]; // 961010
        String juminNo2 = juminParts.length > 1 ? juminParts[1] : ""; // 1234567

        // 주소 분리
        String addr = mdto.getAddr(); // addr가 하나의 필드로 저장되어 있다고 가정
        String[] addrParts = addr.split(" "); // 공백 기준으로 분리
        String addr1 = addrParts.length > 0 ? addrParts[0] : ""; // 첫 번째 부분
        String addr2 = addrParts.length > 1 ? addrParts[1] : ""; // 두 번째 부분 (혹은 나머지)

        // 모델에 데이터 추가
        model.addAttribute("member", mdto);
        model.addAttribute("phone1", phoneParts[0]);
        model.addAttribute("phone2", phoneParts[1]);
        model.addAttribute("phone3", phoneParts[2]);
        model.addAttribute("birth1", birthYear);
        model.addAttribute("birth2", birthMonth);
        model.addAttribute("birth3", birthDay);
        model.addAttribute("juminNo1", juminNo1);
        model.addAttribute("juminNo2", juminNo2);
        model.addAttribute("addr1", addr1); // addr1 추가
        model.addAttribute("addr2", addr2); // addr2 추가
        
        return "pageEdit"; // 수정 페이지로 이동
    }
    @PostMapping("/updateMem.do")
    public String updateMembers(@ModelAttribute IsMasterDTO isMasterDTO, 
                                @RequestParam("juminNo1") String juminNo1,
                                @RequestParam("juminNo2") String juminNo2,
                                @RequestParam("phone1") String phone1,
                                @RequestParam("phone2") String phone2,
                                @RequestParam("phone3") String phone3,
                                @RequestParam("addr1") String addr1,
                                @RequestParam("addr2") String addr2,
                                @RequestParam("birth1") String birthYear,
                                @RequestParam("birth2") String birthMonth,
                                @RequestParam("birth3") String birthDay,
                                @RequestParam("userNo") String userNo, 
                                HttpServletRequest req) {
        
        // 주민등록번호와 전화번호를 합치기
        String juminNo = juminNo1 + " " + juminNo2; // 주민등록번호 합치기
        String tel = phone1 + "-" + phone2 + "-" + phone3; // 전화번호 합치기
        String addr = addr1 + " " + addr2; // 주소 합치기

        // 생년월일 합치기 (YYYYMMDD 형식)
        String birthYmd = birthYear + birthMonth + birthDay;

        // DTO에 합쳐진 값 세팅
        isMasterDTO.setJuminNo(juminNo);
        isMasterDTO.setTel(tel);
        isMasterDTO.setAddr(addr);
        isMasterDTO.setBirthYmd(birthYmd); // 생년월일 설정
        isMasterDTO.setUserNo(userNo); // userNo 추가

        // DB 업데이트
        int res = boardMapper.updateMember(isMasterDTO);
        if (res > 0) {
            req.setAttribute("url", "/");
            req.setAttribute("msg", "수정 완료!");
        } else {
            req.setAttribute("url", "/");
            req.setAttribute("msg", "수정 실패");
        }

        return "message"; // 업데이트 후 메시지 페이지로 이동
    }




    
}
