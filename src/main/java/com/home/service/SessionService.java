package com.home.service;

import com.home.domain.Session;
import com.home.domain.User;
import com.home.enums.Status;
import com.home.model.SessionModel;
import com.home.repository.SessionRepository;
import com.home.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class SessionService {

    @Autowired
    UserRepository userRepository;

    SessionRepository sessionRepository;

    @Autowired
    public SessionService(SessionRepository sessionRepository) {
        this.sessionRepository = sessionRepository;
    }

    public List<Session> findAll() {
        return sessionRepository.findAll();
    }

    public List<Session> findByStatus(Status status) {
        return sessionRepository.findByStatus(status);
    }

    public Session save(SessionModel sessionModel) {
        Optional<Session> sessionOptional = Optional.ofNullable(sessionRepository.findById(sessionModel.getId()));
        Session session = sessionOptional.orElse(new Session());
        List<User> users = userRepository.findByIdIn(sessionModel.getUsers());
        session.setUsers(users);
        session.setName(sessionModel.getName());
        return sessionRepository.save(session);
    }

    public Session close(Long id) {
        Session session = sessionRepository.findById(id);
        session.setStatus(Status.CLOSED);
        return sessionRepository.save(session);
    }
}
