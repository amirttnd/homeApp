package com.home.repository;

import com.home.domain.Session;
import com.home.enums.Status;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SessionRepository extends CrudRepository<Session, Long> {
    List<Session> findAll();

    Session findById(Long id);

    List<Session> findByStatus(Status status);
}
