package com.revesoft.springboot.web.util;

import org.slf4j.Logger;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import javax.servlet.http.HttpServletRequest;


@ControllerAdvice
    public class FileErrorController extends ResponseEntityExceptionHandler {

        Logger logger = org.slf4j.LoggerFactory.getLogger(getClass());

        @ExceptionHandler(MultipartException.class)
        @ResponseBody
        String handleFileException(

                HttpServletRequest request, Throwable ex) {
            //return your json insted this string.
            return "File upload error. Max File Size Exceeded";
        }
    }


