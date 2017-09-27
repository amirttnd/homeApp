package com.home.service;

import com.home.domain.User;
import com.home.model.UserModel;
import com.home.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserService {

    @Autowired
    UserRepository userRepository;

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public List<User> findByIsActive(Boolean isActive) {
        return userRepository.findByIsActive(isActive);
    }

    public User save(UserModel userModel) {
        Optional<User> userOptional = Optional.ofNullable(userRepository.findByUsername(userModel.getUsername()));
        User user = userOptional.orElse(new User());
        user.bind(userModel);
        return userRepository.save(user);
    }
}
