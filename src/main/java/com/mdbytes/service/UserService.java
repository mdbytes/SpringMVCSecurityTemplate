package com.mdbytes.service;

import com.mdbytes.dto.RegistrationDto;
import com.mdbytes.model.UserEntity;

import java.util.List;

public interface UserService {
    UserEntity saveUser(RegistrationDto registrationDto);

    UserEntity findByEmail(String email);

    UserEntity findByUsername(String username);

    List<UserEntity> findAll();

    UserEntity save(UserEntity user);

    void delete(UserEntity user);

    UserEntity getCurrentUser();
}
