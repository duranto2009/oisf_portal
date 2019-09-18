package com.revesoft.springboot.web.portal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class PortalService {



    @Autowired
    PortalDAO portalDAO;
    public ArrayList<ServiceListDTO> getServiceList( int ownerId)  {
        ArrayList<ServiceListDTO>data=new ArrayList<>();

        try {
           data=portalDAO.getServiceList(ownerId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }
    public ServiceListDTO getServiceDetail( int id)  {
        ServiceListDTO serviceListDTO=new ServiceListDTO();

        try {
            serviceListDTO=portalDAO.getServiceDetails(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return serviceListDTO;
    }
    public ServiceListDTO getServiceIntDetail( int id)  {
        ServiceListDTO serviceListDTO=new ServiceListDTO();

        try {
            serviceListDTO=portalDAO.getServiceIntDetails(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return serviceListDTO;
    }

    public ArrayList<ServiceOwnerDTO> getServiceOwner(int type )  {
        ArrayList<ServiceOwnerDTO>data=new ArrayList<>();

        try {
            data=portalDAO.getOwnerList(type);
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }
    public ServiceOwnerDTO getOwner(int id) throws Exception{
        ServiceOwnerDTO serviceOwnerDTO=new ServiceOwnerDTO();

        try {
            serviceOwnerDTO=portalDAO.getOwner(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return serviceOwnerDTO;
    }

    public ArrayList<ServiceFieldsDTO> getInputFieldsDetails( int serviceId){
        ArrayList<ServiceFieldsDTO>data=new ArrayList<>();

        try {
            data=portalDAO.getInputFieldsDetails(serviceId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }
    public ArrayList<ServiceFieldsDTO> getDBFieldsDetails( int serviceId){
        ArrayList<ServiceFieldsDTO>data=new ArrayList<>();

        try {
            data=portalDAO.getDBFieldsDetails(serviceId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }


    public boolean addPortal(ServiceOwnerDTO serviceOwnerDTO) {
        boolean id = true;
        try{
            portalDAO.addPortal(serviceOwnerDTO);

        }catch (Exception e){
            id = false;
            e.printStackTrace();
        }
        return id;

    }

    public ArrayList<ServiceListDTO> getAllServiceList(){
        ArrayList<ServiceListDTO>data=new ArrayList<>();

        try {
            data=portalDAO.getAllServiceList();
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }
    public ArrayList<SearchDTO> getSearchData( String searchParam)throws Exception{
        ArrayList<SearchDTO>data=new ArrayList<>();
        try {
            data=portalDAO.getSearchData(searchParam);
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }
    public ArrayList<StaticContentDTO> getStaticData( int contentRoot)throws Exception{
        ArrayList<StaticContentDTO>data=new ArrayList<>();
        try {
            data=portalDAO.getStaticData(contentRoot);
        }catch (Exception e){
            e.printStackTrace();
        }
        return data;
    }

    public boolean addFeedback(String email, String subject, String message) throws Exception {
        boolean success = false;
        try {
          success =  portalDAO.addFeedback(email, subject, message);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }
}
