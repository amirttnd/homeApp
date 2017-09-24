package com.home.domain;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Session {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    @OneToMany(cascade = CascadeType.ALL)
    List<User> users = new ArrayList<User>();

    @OneToMany(cascade = CascadeType.ALL)
    List<Product> products = new ArrayList<Product>();


}
