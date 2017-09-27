package com.home.domain;


import com.home.enums.Status;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class Session {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    String name;

    @ManyToMany(cascade = CascadeType.ALL)
    List<User> users = new ArrayList<User>();

    @ManyToMany(cascade = CascadeType.ALL)
    List<Product> products = new ArrayList<Product>();

    @Enumerated(value = EnumType.STRING)
    Status status = Status.ACTIVE;

    Date startDate = new Date();

    Date closeDate;

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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getCloseDate() {
        return closeDate;
    }

    public void setCloseDate(Date closeDate) {
        this.closeDate = closeDate;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public Date getDateCreated() {

        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
}
