package com.example.demo.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;
import org.springframework.web.multipart.MultipartFile;

public class UploadFile {
    private String fullname;

    public String getFullName() {
        return fullname;
    }

    public boolean uploadFile(MultipartFile file) {
        String fileDir = "E:\\jh\\springBoot\\TestBoard\\src\\main\\resources\\static\\imgage\\";
        UUID uuid = UUID.randomUUID();
        String[] uuids = uuid.toString().split("-");
        String uniqueName = uuids[0];
        String fileExtension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        fullname = uniqueName + fileExtension;
        try {
            file.transferTo(new File(fileDir + fullname));
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

