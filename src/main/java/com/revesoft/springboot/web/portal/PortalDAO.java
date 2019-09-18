package com.revesoft.springboot.web.portal;

import com.revesoft.springboot.web.util.DBUtility;
import databasemanager.DatabaseManager;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

@Repository
public class PortalDAO {

    public static final String TBL_SERVICE_OWNER="service_owner";
    public static final String TBL_STATIC_CONTENT="static_content";
    public static final String TBL_SERVICE_LIST="service_list";
    public static final String TBL_SERVICE_FIELD="service_fields";
    private static final String TBL_FEEDBACK="feedback";

    public ArrayList<StaticContentDTO> getStaticData( int contetRoot) throws Exception{
        ArrayList<StaticContentDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;

        ResultSet rs=null;
        String sql="select * from " + TBL_STATIC_CONTENT+ " WHERE  content_root_id=? ORDER BY position ASC ";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,contetRoot);

            rs=ps.executeQuery();
            while(rs.next()){
                StaticContentDTO staticContentDTO =new StaticContentDTO();
                staticContentDTO.setId(rs.getInt("id"));
                staticContentDTO.setContentRootId(contetRoot);
                staticContentDTO.setTitle(rs.getString("title"));
                staticContentDTO.setDescription(rs.getString("description"));

                staticContentDTO.setPosition(rs.getInt("position"));


                data.add(staticContentDTO);
            }


        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }



    public ArrayList<SearchDTO> getSearchData( String searchParam) throws Exception{
        ArrayList<SearchDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;
        PreparedStatement ps2=null;
        ResultSet rs2=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_OWNER+ " WHERE status=1 and name_eng LIKE ? ";
        String sql2="select * from " + TBL_SERVICE_LIST+ " WHERE status=1 and name_eng LIKE ? ";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setString(1,"%"+searchParam+"%");

            rs=ps.executeQuery();
            while(rs.next()){
                SearchDTO searchDTO =new SearchDTO();
                searchDTO.setId(rs.getInt("id"));
                searchDTO.setType(1);
                searchDTO.setNameBng(rs.getString("name_bng"));
                searchDTO.setNameEng(rs.getString("name_eng"));
                if(rs.getInt("type")==1){
                    searchDTO.setUrl("portal/servicelist/"+rs.getInt("id"));
                }else if(rs.getInt("type")==0){
                    searchDTO.setUrl("portal/corelist/"+rs.getInt("id"));
                }
                searchDTO.setDescription(rs.getString("description"));


                data.add(searchDTO);
            }

            ps2=connection.prepareStatement(sql2);
            ps2.setString(1,"%"+searchParam+"%");
            rs2=ps2.executeQuery();
            while(rs2.next()){
                SearchDTO searchDTO =new SearchDTO();
                searchDTO.setId(rs2.getInt("id"));
                searchDTO.setType(2);
                searchDTO.setNameBng(rs2.getString("name_bng"));
                searchDTO.setNameEng(rs2.getString("name_eng"));
                searchDTO.setDescription(rs2.getString("description"));
                searchDTO.setUrl("portal/servicemeta/"+rs2.getInt("id"));


                data.add(searchDTO);
            }


        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }


    public ArrayList<ServiceListDTO> getAllServiceList() throws Exception{
        ArrayList<ServiceListDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_LIST+ " WHERE status=1 ";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);

            rs=ps.executeQuery();
            while(rs.next()){
                ServiceListDTO serviceListDTO =new ServiceListDTO();
                serviceListDTO.setServiceId(rs.getInt("id"));
                serviceListDTO.setNameBng(rs.getString("name_bng"));
                serviceListDTO.setNameEng(rs.getString("name_eng"));


                data.add(serviceListDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }

    public ArrayList<ServiceListDTO> getServiceList( int ownerId) throws Exception{
        ArrayList<ServiceListDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_LIST+ " WHERE service_owner_id=? and status=1 order by id asc";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,ownerId);
            rs=ps.executeQuery();
            while(rs.next()){
                ServiceListDTO serviceListDTO =new ServiceListDTO();
                serviceListDTO.setServiceId(rs.getInt("id"));
                serviceListDTO.setServiceOwnerId(rs.getInt("service_owner_id"));
                serviceListDTO.setNameBng(rs.getString("name_bng"));
                serviceListDTO.setNameEng(rs.getString("name_eng"));
                serviceListDTO.setStatus(rs.getInt("status"));

                data.add(serviceListDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }

    public int getServiceCount( int ownerId ,Connection connection) throws Exception{

        int count=0;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select count(*) as cnt from " + TBL_SERVICE_LIST+ " WHERE service_owner_id=? and status=1 ";
        try {
            ps=connection.prepareStatement(sql);
            ps.setInt(1,ownerId);
            rs=ps.executeQuery();
            while(rs.next()){
                count=rs.getInt("cnt");
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
        }
        return count;

    }


    public ServiceListDTO getServiceDetails( int id) throws Exception{
        ServiceListDTO serviceListDTO=new ServiceListDTO();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_LIST+ " WHERE id=? and status=1";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()){

                serviceListDTO.setServiceId(rs.getInt("id"));
                serviceListDTO.setServiceOwnerId(rs.getInt("service_owner_id"));
                serviceListDTO.setServiceType(rs.getString("service_type"));
                serviceListDTO.setOutputType(rs.getString("output_type"));
                serviceListDTO.setNameBng(rs.getString("name_bng"));
                serviceListDTO.setNameEng(rs.getString("name_eng"));
                serviceListDTO.setDescription(rs.getString("description"));
                serviceListDTO.setMetadataRefNum(rs.getString("metadata_referance_number"));
                serviceListDTO.setIntStandRefNum(rs.getString("integration_standard_referance_num"));
                serviceListDTO.setDbStandRefNum(rs.getString("db_standard_referance_num"));
                serviceListDTO.setStatus(rs.getInt("status"));
                serviceListDTO.setOwnerSubSystem(rs.getString("owner_sub_system"));

            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return serviceListDTO;

    }

    public ServiceListDTO getServiceIntDetails( int id) throws Exception{
        ServiceListDTO serviceListDTO=new ServiceListDTO();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_LIST+ " WHERE id=? and status=1";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()){

                serviceListDTO.setServiceId(rs.getInt("id"));

                serviceListDTO.setNameBng(rs.getString("name_bng"));
                serviceListDTO.setNameEng(rs.getString("name_eng"));
                serviceListDTO.setIntStandRefNum(rs.getString("integration_standard_referance_num"));
                serviceListDTO.setInvokingUri(rs.getString("invoking_uri"));
                serviceListDTO.setRequestUri(rs.getString("request_uri"));
                serviceListDTO.setExampleRequest(rs.getString("example_request"));
                serviceListDTO.setExampleResponse(rs.getString("example_response"));
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return serviceListDTO;

    }

    public ArrayList<ServiceOwnerDTO> getOwnerList(int type) throws Exception{
        ArrayList<ServiceOwnerDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_OWNER+ " WHERE status=1 and type=? order by id asc ";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,type);
            rs=ps.executeQuery();
            while(rs.next()){
                ServiceOwnerDTO serviceOwnerDTO =new ServiceOwnerDTO();
                serviceOwnerDTO.setId(rs.getInt("id"));
                serviceOwnerDTO.setNameBng(rs.getString("name_bng"));
                serviceOwnerDTO.setNameEng(rs.getString("name_eng"));
                serviceOwnerDTO.setStatus(rs.getInt("status"));
                serviceOwnerDTO.setLogoUrl(rs.getString("logo_url"));
                serviceOwnerDTO.setServiceCount(getServiceCount(rs.getInt("id"),connection));
                data.add(serviceOwnerDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }
    public ServiceOwnerDTO getOwner(int id) throws Exception{
        ServiceOwnerDTO serviceOwnerDTO=new ServiceOwnerDTO();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_OWNER+ " WHERE status=1  and id=? ";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()){
                serviceOwnerDTO.setId(rs.getInt("id"));
                serviceOwnerDTO.setNameBng(rs.getString("name_bng"));
                serviceOwnerDTO.setNameEng(rs.getString("name_eng"));
                serviceOwnerDTO.setStatus(rs.getInt("status"));
                serviceOwnerDTO.setType(rs.getInt("type"));
                serviceOwnerDTO.setLogoUrl(rs.getString("logo_url"));

            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return serviceOwnerDTO ;

    }

    public ArrayList<ServiceFieldsDTO> getInputFieldsDetails( int serviceId) throws Exception{
        ArrayList<ServiceFieldsDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_FIELD+ " WHERE service_id=? and type=1 order by is_mandatory desc";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,serviceId);
            rs=ps.executeQuery();
            while(rs.next()){

                ServiceFieldsDTO serviceFieldsDTO =new ServiceFieldsDTO();
                serviceFieldsDTO.setId(rs.getInt("id"));
                serviceFieldsDTO.setServiceId(rs.getInt("service_id"));
                serviceFieldsDTO.setNameBng(rs.getString("name_bng"));
                serviceFieldsDTO.setNameEng(rs.getString("name_eng"));
                serviceFieldsDTO.setIsMandatory(rs.getInt("is_mandatory"));
                data.add(serviceFieldsDTO);


            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }

    public ArrayList<ServiceFieldsDTO> getDBFieldsDetails( int serviceId) throws Exception{
        ArrayList<ServiceFieldsDTO> data=new ArrayList<>();
        Connection connection=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="select * from " + TBL_SERVICE_FIELD+ " WHERE service_id=? ";
        try {
            connection= DatabaseManager.getInstance().getConnection();
            ps=connection.prepareStatement(sql);
            ps.setInt(1,serviceId);
            rs=ps.executeQuery();
            while(rs.next()){

                ServiceFieldsDTO serviceFieldsDTO =new ServiceFieldsDTO();
                serviceFieldsDTO.setId(rs.getInt("id"));
                serviceFieldsDTO.setServiceId(rs.getInt("service_id"));
                serviceFieldsDTO.setNameBng(rs.getString("name_bng"));
                serviceFieldsDTO.setNameEng(rs.getString("name_eng"));
                serviceFieldsDTO.setIsMandatory(rs.getInt("is_mandatory"));
                serviceFieldsDTO.setDescription(rs.getString("description"));
                serviceFieldsDTO.setFieldType(rs.getString("field_type"));
                serviceFieldsDTO.setType(rs.getInt("type"));
                data.add(serviceFieldsDTO);


            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(ps != null)ps.close();
            if(connection != null)connection.close();
        }
        return data;

    }


    public boolean addPortal(ServiceOwnerDTO serviceOwnerDTO) throws Exception {
        boolean success=false;
        Connection cn = null;
        PreparedStatement ps = null;
        long ID=-1;
        // ResultSet rs = null;
        String sql=null;
        try {
            cn = DatabaseManager.getInstance().getConnection();
            sql = "insert into "+TBL_SERVICE_OWNER + "(name_eng,name_bng,type,status)" +
                    " values (?,?,?,?,?)";
            ps=cn.prepareStatement(sql);
            int k=0;
            ps.setString(++k,serviceOwnerDTO.getNameEng());
            ps.setString(++k,serviceOwnerDTO.getNameBng());
            ps.setInt(++k,serviceOwnerDTO.getType());
            ps.setInt(++k,serviceOwnerDTO.getStatus());
            ps.executeUpdate();
            success=true;



        }catch (Exception ex){
            ex.printStackTrace();
            success=false;
        }finally {
            if(ps != null)ps.close();
            if(cn != null)cn.close();
        }
        return success;

    }

    public boolean addFeedback(String email, String subject, String message) {
        boolean success = false;
        try {
            DBUtility.addTableData(TBL_FEEDBACK,
                    new String[]{"email","subject","message"},
                    new String[]{email,subject,message}
                    );
            success = true;

        } catch (Exception e) {
            e.printStackTrace();

        }
        return success;
    }
}
