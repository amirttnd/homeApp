package com.home.repository;

import com.home.domain.Login;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface LoginRepository extends JpaRepository<Login, Long> {

    @Query("SELECT count(l) from login l where l.username=?1 and l.password=?2")
    Integer countByUsernameAndPassword(String username, String password);
}
