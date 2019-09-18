package com.revesoft.springboot.web.ipextract;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class IPExtractController {
    @RequestMapping(value = "iptest")
    public ModelAndView ipTest(){
        InetAddress yip2= null;
        try {
            yip2 = java.net.InetAddress.getLocalHost();
//            java.net.
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        String yip=yip2.getHostAddress();
        System.out.println("IP is :"+yip);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("ipfromjava",yip);
        modelAndView.setViewName("test");

        return modelAndView;
    }
}
