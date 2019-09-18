package com.revesoft.springboot.web.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.regex.Pattern;

@Component
public class PathBuilder {
    private static final Logger log = LoggerFactory.getLogger(PathBuilder.class);

    private static final String appIconPath="static\\assets\\img\\dashboardicon\\";
    private static final String relativeAppIconPath="assets\\img\\dashboardicon\\";



    public HashMap<Integer,String> buildPath(ServletContext servletContext,String moduleName,String ignorablePath){
        String path="";
        HashMap<Integer,String>mappedPath=new HashMap<>();
        String absoulatePart=servletContext.getRealPath("WEB-INF/classes").toString();
        String [] patharray=absoulatePart.split(Pattern.quote("\\"));
        for (String paths:patharray) {
            if(!(paths.equals(ignorablePath)))
            {
                path=path+paths+"\\";
            }

        }
        if(moduleName.equals(moduleName)){
            path=path+appIconPath;
            mappedPath.put(1,path);
            mappedPath.put(2,relativeAppIconPath);
        }
        log.debug("=========================");
        log.error("path: " + mappedPath.get(1));
        log.debug("=========================");
        return mappedPath;
    }
}
