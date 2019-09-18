package com.revesoft.springboot.web.portal;

import databasemanager.DatabaseManager;
import databasemanager.DatabaseManagerSuccessful;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Bony on 9/12/2017.
 */
@Repository
public class ApplicationDAO {

    private static final String TABLE_APPLICATION_REGISTRATION = "application_registration";
    private static final String TABLE_PORTAL_FEEDBACK = "portal_feedback";

//
//    public long idGen()throws Exception {
//        Connection cn = null;
//        Long ID = null;
//        String sql = null;
//        try {
//            cn = DatabaseManager.getInstance().getConnection();
//            ID = DatabaseManager.getInstance().getNextSequenceId(TABLE_APPLICATION_REGISTRATION);
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        } finally {
//            if (cn != null) cn.close();
//        }
//        return ID;
//    }

//-------start--Bishwajit Code-----------------------------------------------------------------------------------------------------------------------------------------



    public boolean addApplication(ApplicationDTO applicationDTO, Long userID) throws Exception {
        String sql = null;
        Connection cn = null;
        PreparedStatement ps = null;
        long ID;
        boolean status = false;
        try {
            cn = DatabaseManagerSuccessful.getInstance().getConnection();
            cn.setAutoCommit(false);
            sql = "insert into " + TABLE_APPLICATION_REGISTRATION + " (application_name,application_name_bng,url,status,"
                    + "email_address,mobile_no,notification_mechanism,created_by,logo_url,default_page_url,logout_url) "
                    + "values(?,?,?,?,?,?,?,?,?,?,?)";
            ps = cn.prepareStatement(sql);
//            ID = DatabaseManager.getInstance().getNextSequenceId(TABLE_APPLICATION_REGISTRATION);
//            applicationDTO.setId(ID);
            int k = 0;
//            ps.setLong(++k, applicationDTO.getId());
            ps.setString(++k, applicationDTO.getName());
            ps.setString(++k, applicationDTO.getNameBng());
            ps.setString(++k, applicationDTO.getLink());
            ps.setInt(++k, applicationDTO.getStatus());
            ps.setString(++k, applicationDTO.getAppDomainEmail());
            ps.setString(++k, applicationDTO.getMobileNo());
            ps.setInt(++k, applicationDTO.getNotificationFlag());
            ps.setLong(++k, applicationDTO.getCreatedBy());
//            ps.setString(++k, applicationDTO.getRedirect());
            ps.setString(++k, applicationDTO.getLogoUrl());
            ps.setString(++k,applicationDTO.getDefaultPageURL());
            ps.setString(++k,applicationDTO.getLogoutURL());
            ps.executeUpdate();
            cn.commit();
            status = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            clearResources(cn, ps, null);
        }
        return status;
    }

    public boolean addFeedback(FeedbackDTO feedbackDTO) throws Exception {
        String sql = null;
        Connection cn = null;
        PreparedStatement ps = null;
        long ID;
        boolean status = false;
        try {
            cn = DatabaseManagerSuccessful.getInstance().getConnection();
            cn.setAutoCommit(false);
            sql = "insert into " + TABLE_PORTAL_FEEDBACK + " (form,subject,message) "+
                     "values(?,?,?)";
            ps = cn.prepareStatement(sql);

            int k = 0;

            ps.setString(++k,feedbackDTO.getFrom());
            ps.setString(++k,feedbackDTO.getSubject());
            ps.setString(++k,feedbackDTO.getMessage());
//
            ps.executeUpdate();
            cn.commit();
            status = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            clearResources(cn, ps, null);
        }
        return status;
    }









    private void clearResources(Connection conn, PreparedStatement ps, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        try {
            ps.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        try {
            DatabaseManager.getInstance().freeConnection(conn);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }


    public Long lastId(String tableName) throws Exception{
        String sql="select  AUTO_INCREMENT as lid " +
                "FROM  INFORMATION_SCHEMA.TABLES " +
                "WHERE TABLE_SCHEMA = 'oisf_rnd' " +
                "AND   TABLE_NAME   = "  +"\'" +tableName+"\'";
        Long lid=Long.valueOf("0");
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long ID;
        boolean status = false;
        try{
            cn = DatabaseManagerSuccessful.getInstance().getConnection();
            ps=cn.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                lid = rs.getLong("lid");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        finally{
            clearResources(cn, ps, rs);
        }
        return lid;
    }


}
