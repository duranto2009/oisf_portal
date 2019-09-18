package com.revesoft.springboot.web.portal;

public class StaticContentDTO {

    int id;
    int contentRootId;
    String title;
    String description;
    int position;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getContentRootId() {
        return contentRootId;
    }

    public void setContentRootId(int contentRootId) {
        this.contentRootId = contentRootId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }
}
