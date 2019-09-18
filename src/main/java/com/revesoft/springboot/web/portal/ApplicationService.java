package com.revesoft.springboot.web.portal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by Bony on 9/21/2017.
 */
@Service
public class ApplicationService {

    @Autowired
    ApplicationDAO applicationDAO;




    //-------end--Bishwajit Code-----------------------------------------------------------------------------------------------------------------------------------------

    public boolean addApplicationService(ApplicationDTO applicationDTO, Long userID) {
        boolean status = false;
        try {
            applicationDAO.addApplication(applicationDTO, userID);
                //sendSecret(applicationDTO.getAppDomainEmail(), applicationDTO.getApplicationSecret());
                status = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public Long lastId(String tableName) throws Exception {
        Long lid = Long.valueOf("0");
        try{
            lid =  applicationDAO.lastId(tableName);
        }catch (Exception e){
            e.printStackTrace();
        }
        return lid;
    }


    public boolean addFeedback(FeedbackDTO feedbackDTO) {

        boolean status = false;
        try {
            applicationDAO.addFeedback(feedbackDTO);
            status = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;

    }
//    public long idGenaretor(){
//        long id=-1;
//        try {
//            id=applicationDAO.idGen();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        return id;
//    }
}
