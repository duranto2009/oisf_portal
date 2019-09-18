package com.revesoft.springboot.web.portal;

public class ServiceOwnerDTO {
    int id;
    String nameBng;
    String nameEng;
    int status;
    int type;
    String logoUrl;
    int serviceCount;

    public int getServiceCount() {
        return serviceCount;
    }

    public void setServiceCount(int serviceCount) {
        this.serviceCount = serviceCount;
    }

    public String getLogoUrl() {
        return logoUrl;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    public int getType() {
        return type;
    }

    @Override
    public String toString() {
        return "ServiceOwnerDTO{" +
                "id=" + id +
                ", nameBng='" + nameBng + '\'' +
                ", nameEng='" + nameEng + '\'' +
                ", status=" + status +
                ", type=" + type +
                '}';
    }

    public ServiceOwnerDTO(String nameBng, String nameEng, int status, int type) {
        this.nameBng = nameBng;
        this.nameEng = nameEng;
        this.status = status;
        this.type = type;
    }
    public ServiceOwnerDTO(){

    }

    public void setType(int type) {
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
