package com.home.repository;

import com.home.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    List<User> findAll();

    User findByUsername(String username);

    List<User> findByIsActive(Boolean isActive);

    List<User> findByIdIn(List<Long> ids);
}
