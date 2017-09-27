package com.home.domain;


import com.home.model.UserModel;

import javax.persistence.*;
import java.util.Date;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    String name;

    @Column(unique = true, nullable = false)
    String username;

    @Column(nullable = false)
    String password;

    Boolean isActive = true;

    Date dateCreated;

    Date lastUpdated;


    @PrePersist
    void beforeInsert() {
        this.dateCreated = new Date();
        this.lastUpdated = new Date();
    }

    @PreUpdate
    void beforeUpdate() {
        this.lastUpdated = new Date();
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public User() {

    }

    public User(UserModel userModel) {
        bind(userModel);
    }

    public void bind(UserModel userModel) {
        this.name = userModel.getName();
        this.username = userModel.getUsername();
        this.password = userModel.getPassword();
        this.isActive = userModel.getIsActive();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }

    public Long getId() {

        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
