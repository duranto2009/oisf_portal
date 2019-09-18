package com.revesoft.springboot.web.portal;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.*;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * Created by Bony on 10/22/2017.
 */
@Service
public class MailSender {




   private JavaMailSender sender=new JavaMailSenderImpl();


    @Bean
    public JavaMailSender getJavaMailSender() {
       JavaMailSender mailSender = new JavaMailSenderImpl();
//        mailSender.setHost("smtp.gmail.com");
//        mailSender.setPort(587);
//
//        mailSender.setUsername("my.gmail@gmail.com");
//        mailSender.setPassword("password");
//
//        Properties props = mailSender.getJavaMailProperties();
//        props.put("mail.transport.protocol", "smtp");
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.debug", "true");

        return mailSender;
    }


    public void sendEmail( String From,String To,String Subject,String mailbody) throws Exception{

//        MimeMessage message = sender.createMimeMessage();
//        Properties properties=new Properties();
//        properties.setProperty("mail.user","oisf.reve@gmail.com");
//        properties.setProperty("mail.password","oisf@reve");
//
//        MimeMessageHelper helper = new MimeMessageHelper(message);
////        message.setTo("shariful.bony@gmail.com");
////        message.setSubject("Hello");
////        message.setText("How Are You");
////        message.setFrom("oisf.reve@gmail.com");
//
//
//        helper.setTo("shariful.bony@gmail.com");
//        helper.setFrom("oisf.reve@gmail.com");
//
//
//        helper.setText("How are you?");
//
//        helper.setSubject("Hi");
//        sender.send(message);

        final String username = "oisf.reve@gmail.com";
        final String password = "oisf@reve";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");

        //added by Bishwajit Saha for ignoring antivirus action
        props.put("mail.smtp.ssl.trust", "*");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(From));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(To));
            message.setSubject(Subject);
            message.setText(mailbody);

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
