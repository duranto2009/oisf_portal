package com.revesoft.springboot.web.util;


import org.apache.catalina.core.ApplicationContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.view.RedirectView;
import org.springframework.web.multipart.MultipartFile;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletContext;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;

@Service

public class ImageUploader {
    private static Logger log = LoggerFactory.getLogger(ImageUploader.class);

    @Autowired
    ServletContext context;

    public String fileChecker(MultipartFile file) {

        File file1 = new File(file.getOriginalFilename());
        String filename = file.getOriginalFilename();
//        try {
//            file.transferTo(file1);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
        //String mimeType = new MimetypesFileTypeMap().getContentType(file1);
        String mimeType = "";

        if (context.getMimeType(filename) == null) {
            return "invalid";
        } else {
            mimeType = context.getMimeType(filename);
            String[] fileType = mimeType.split("/");
            return fileType[0];
        }


    }

    public String upload(MultipartFile file, String uploadFolder, String fileName) {
        log.debug("====================== start: imageUploader.jva ===================");
        String filepath = "";

        String Name = file.getOriginalFilename();
//        uploadFolder=uploadFolder.replaceAll("\\\\", File.separator);
        char [] uploadFolderCharacterArray = uploadFolder.toCharArray();
        for(int i=0;i<uploadFolderCharacterArray.length;i++){
            if(uploadFolderCharacterArray[i] == '\\'){
                uploadFolderCharacterArray[i] = '/';
            }
        }
        uploadFolder = String.valueOf(uploadFolderCharacterArray);
        uploadFolder = uploadFolder.replaceAll("\\b/webapp\\b","");
//        Logger log = Logger.getLogger(ImageUploader.class);
        log.debug("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! uploadFolder : " + uploadFolder);


        String ext = ".png";
        if(file.getContentType().equals("image/png"))ext = ".png";
        else if (file.getContentType().equals("image/jpeg"))ext = ".jpg";
        String checker = "";
        if(!Name.equals("blob")) {
            checker = fileChecker(file);
            if (checker.equals("invalid")) {
                return "invalid";
            }
            if (!checker.equals("image")) {
                return "invalid";
            }
        }

        if (file.isEmpty()) {
            return "invalid";
        } else {

            try {

                // Get the file and save it somewhere
                byte[] bytes = file.getBytes();
                Path path = Paths.get(uploadFolder + fileName + ext);
                log.error("!!!!!!1   path:  " + path.toString());

                Files.write(path, bytes);
                filepath = fileName + ext;

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        log.debug("====================== end: imageUploader.jva ===================");


        return filepath;
        //return PathBuilder.profilePicPath;

    }
}
