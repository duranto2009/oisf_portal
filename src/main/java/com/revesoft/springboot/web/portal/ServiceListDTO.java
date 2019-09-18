package com.revesoft.springboot.web.portal;

public class ServiceListDTO {
    int serviceId;
    String nameBng;
    String nameEng;
    int status;
    int serviceOwnerId;
    String serviceType;
    String outputType;
    String Description;
    String metadataRefNum;
    String intStandRefNum;
    String dbStandRefNum;
    String ownerSubSystem;

    String invokingUri;
    String requestUri;
    String exampleRequest;
    String exampleResponse;

    public String getInvokingUri() {
        return invokingUri;
    }

    public void setInvokingUri(String invokingUri) {
        this.invokingUri = invokingUri;
    }

    public String getRequestUri() {
        return requestUri;
    }

    public void setRequestUri(String requestUri) {
        this.requestUri = requestUri;
    }

    public String getExampleRequest() {
        return exampleRequest;
    }

    public void setExampleRequest(String exampleRequest) {
        this.exampleRequest = exampleRequest;
    }

    public String getExampleResponse() {
        return exampleResponse;
    }

    public void setExampleResponse(String exampleResponse) {
        this.exampleResponse = exampleResponse;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getOutputType() {
        return outputType;
    }

    public void setOutputType(String outputType) {
        this.outputType = outputType;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getMetadataRefNum() {
        return metadataRefNum;
    }

    public void setMetadataRefNum(String metadataRefNum) {
        this.metadataRefNum = metadataRefNum;
    }

    public String getIntStandRefNum() {
        return intStandRefNum;
    }

    public void setIntStandRefNum(String intStandRefNum) {
        this.intStandRefNum = intStandRefNum;
    }

    public String getDbStandRefNum() {
        return dbStandRefNum;
    }

    public void setDbStandRefNum(String dbStandRefNum) {
        this.dbStandRefNum = dbStandRefNum;
    }

    public String getOwnerSubSystem() {
        return ownerSubSystem;
    }

    public void setOwnerSubSystem(String ownerSubSystem) {
        this.ownerSubSystem = ownerSubSystem;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getNameBng() {
        return nameBng;
    }

    public void setNameBng(String nameBng) {
        this.nameBng = nameBng;
    }

    public String getNameEng() {
        return nameEng;
    }

    public void setNameEng(String nameEng) {
        this.nameEng = nameEng;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getServiceOwnerId() {
        return serviceOwnerId;
    }

    public void setServiceOwnerId(int serviceOwnerId) {
        this.serviceOwnerId = serviceOwnerId;
    }
}
