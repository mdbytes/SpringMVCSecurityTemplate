package com.mdbytes.service.implementation;

import com.mdbytes.dto.RegistrationDto;
import com.mdbytes.model.Role;
import com.mdbytes.model.UserEntity;
import com.mdbytes.repository.RoleRepository;
import com.mdbytes.repository.UserRepository;
import com.mdbytes.security.SecurityUtil;
import com.mdbytes.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private PasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(
        UserRepository userRepository,
        RoleRepository roleRepository,
        PasswordEncoder passwordEncoder
    ) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public UserEntity saveUser(RegistrationDto registrationDto) {
        UserEntity user = new UserEntity();
        System.out.println("making user");
        user.setUsername(registrationDto.getUsername());
        user.setEmail(registrationDto.getEmail());
        user.setPassword(passwordEncoder.encode(registrationDto.getPassword()));
        Role role = roleRepository.findByName("USER");
        user.setRoles(Arrays.asList(role));
        System.out.println(user);
        return userRepository.save(user);
    }

    @Override
    public UserEntity findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public UserEntity findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public List<UserEntity> findAll() {
        return userRepository.findAll();
    }

    @Override
    public UserEntity save(UserEntity user) {
        return userRepository.save(user);
    }

    @Override
    public void delete(UserEntity user) {
        userRepository.delete(user);
    }

    @Override
    public UserEntity getCurrentUser() {
        String username = SecurityUtil.getSessionUser();
        UserEntity user = findByUsername(username);

        return user;
    }
}
