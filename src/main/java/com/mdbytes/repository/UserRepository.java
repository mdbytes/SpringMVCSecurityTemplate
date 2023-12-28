package com.mdbytes.repository;

import com.mdbytes.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {

    UserEntity findByEmail(String email);

    UserEntity findByUsername(String username);

    UserEntity findFirstByUsername(String username);
}
